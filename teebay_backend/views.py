from django.contrib.auth import authenticate, get_user_model, login
from django.http import JsonResponse
from django.shortcuts import HttpResponse, render
from rest_framework import generics, status
from rest_framework.permissions import AllowAny
from rest_framework.response import Response
from rest_framework.views import APIView
from .models import *
from .serializers import *
from django.views.decorators.csrf import csrf_exempt
import json

# CSRF exempt login view
@csrf_exempt
def login_view(request):
    """
    View to handle user login.
    """
    if request.method == 'POST':
        data = json.loads(request.body)
        username = data.get('username')
        password = data.get('password')
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            if request.user.is_authenticated:
                session_id = request.session.session_key
                return JsonResponse({'message': 'Login successful', 'authenticated': True})
        else:
            return JsonResponse({'message': 'Invalid username or password', 'authenticated': False}, status=401)
    else:
        return JsonResponse({'message': 'Only POST requests are allowed', 'authenticated': False}, status=405)


# Class-based view for user registration
class RegistrationAPIView(APIView):
    """
    View to handle user registration.
    """
    permission_classes = (AllowAny,)

    def post(self, request):
        serializer = UserSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


# View to check if the user is authenticated
def check_authentication(request):
    """
    View to check if the user is authenticated.
    """
    try:
        if request.user.is_authenticated:
            return JsonResponse({'authenticated': True})
        if not request.user.is_authenticated:
            return JsonResponse({'authenticated': False})
        else:
            return JsonResponse({'authenticated': False})
    except User.DoesNotExist:
        return JsonResponse({'authenticated': False})


# Generic class-based view for listing and creating products
class ProductListCreateAPIView(generics.ListCreateAPIView):
    """
    View to list and create products.
    """
    queryset = Product.objects.all()
    serializer_class = ProductSerializer


# Generic class-based view for retrieving, updating, and deleting products
class ProductRetrieveUpdateDestroyAPIView(generics.RetrieveUpdateDestroyAPIView):
    """
    View to retrieve, update, and delete products.
    """
    queryset = Product.objects.all()
    serializer_class = ProductSerializer


# Generic class-based view for buying a product
class BuyProductAPIView(generics.CreateAPIView):
    """
    View to handle buying a product.
    """
    serializer_class = Buy_TransactionSerializer

    def perform_create(self, serializer):
        serializer.save(user=self.request.user)
        return Response({"detail": "Item bought successfully."})


# Generic class-based view for renting a product
class RentProductAPIView(generics.CreateAPIView):
    """
    View to handle renting a product.
    """
    serializer_class = Rent_TransactionSerializer

    def perform_create(self, serializer):
        serializer.save(user=self.request.user)
        return Response({"detail": "Item rented successfully."}, status=status.HTTP_201_CREATED)


# Generic class-based view for listing user transactions
class TransactionsListAPIView(generics.ListAPIView):
    """
    View to list user transactions.
    """
    serializer_class = TransactionSerializer

    def get_queryset(self):
        user = self.request.user
        buy_transactions = BuyTransaction.objects.filter(user_id=user)
        rent_transactions = RentTransaction.objects.filter(user_id=user)
        return list(buy_transactions) + list(rent_transactions)


# Generic class-based view for listing rent transactions
class Rent_trans(generics.ListAPIView):
    """
    View to list rent transactions.
    """
    serializer_class = rent

    def get_queryset(self):
        user = self.request.user
        return RentTransaction.objects.filter(user_id=user)


# Generic class-based view for listing buy transactions
class buy_trans(generics.ListAPIView):
    """
    View to list buy transactions.
    """
    serializer_class = buy

    def get_queryset(self):
        user = self.request.user
        return BuyTransaction.objects.filter(user_id=user)
