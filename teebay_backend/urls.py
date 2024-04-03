from django.contrib import admin
from django.urls import path, include
from .views import *

urlpatterns = [
    # URLs for listing and creating products
    path('products/', ProductListCreateAPIView.as_view(), name='product-list-create'),
    path('login/', login_view, name='login'),
    path('check/', check_authentication),

    # URLs for retrieving, updating, and deleting products
    path('products/<int:pk>/', ProductRetrieveUpdateDestroyAPIView.as_view(), name='product-retrieve-update-destroy'),

    # URL for buying a product
    path('buy/', BuyProductAPIView.as_view(), name='buy-product'),

    # URL for renting a product
    path('rent/', RentProductAPIView.as_view(), name='rent-product'),

    # URL for listing transactions of the authenticated user
    path('transactions/', TransactionsListAPIView.as_view(), name='user_transactions'),
    path('transactions/rent/', Rent_trans.as_view()),
    path('transactions/buy/', buy_trans.as_view()),
]
