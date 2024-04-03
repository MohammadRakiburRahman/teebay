from django.contrib.auth.models import User
from rest_framework import serializers
from .models import *

# Serializer for products
class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = ['id', 'name', 'description', 'price',
                  'rent_price', 'owner', 'categories']

# Serializer for buy transactions
class Buy_TransactionSerializer(serializers.ModelSerializer):
    class Meta:
        model = BuyTransaction
        fields = ['id', 'product']

# Serializer for rent transactions
class Rent_TransactionSerializer(serializers.ModelSerializer):
    class Meta:
        model = RentTransaction
        fields = ['id', 'product', 'rent_time']

# Serializer for transactions
class TransactionSerializer(serializers.ModelSerializer):
    product_name = serializers.ReadOnlyField(source='product.name')
    product_price = serializers.ReadOnlyField(source='product.price')
    rent_price = serializers.ReadOnlyField(source='product.rent_price')

    class Meta:
        model = BuyTransaction
        fields = ['id', 'product', 'transaction_type',
                  'product_name', 'product_price', 'rent_price']

# Serializer for rent transactions
class rent(serializers.ModelSerializer):
    class Meta():
        model = RentTransaction
        fields = '__all__'

# Serializer for buy transactions
class buy(serializers.ModelSerializer):
    class Meta():
        model = BuyTransaction
        fields = '__all__'

# Serializer for user registration
class UserSerializer(serializers.ModelSerializer):
    password = serializers.CharField(write_only=True)

    class Meta:
        model = User
        fields = ('username', 'password', 'email', 'first_name', 'last_name')

    def create(self, validated_data):
        user = User.objects.create_user(
            username=validated_data['username'],
            password=validated_data['password'],
            email=validated_data.get('email', ''),
            first_name=validated_data.get('first_name', ''),
            last_name=validated_data.get('last_name', '')
        )
        return user
