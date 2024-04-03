from django.db import models
from django.contrib.auth.models import User

# Model for product categories
class Category(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name

# Model for products
class Product(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField()
    price = models.DecimalField(max_digits=10, decimal_places=2)
    rent_price = models.DecimalField(
        max_digits=10, decimal_places=2, null=True, blank=True)
    owner = models.ForeignKey(User, on_delete=models.CASCADE)
    categories = models.ManyToManyField(Category)

    def __str__(self):
        return self.name

# Model for buy transactions
class BuyTransaction(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    transaction_type = models.CharField(max_length=4, default='BUY')

    def __str__(self):
        return f"{self.user.username} bought {self.product.name}"

# Model for rent transactions
class RentTransaction(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    transaction_type = models.CharField(max_length=4, default='RENT')
    rent_time = models.DurationField()

    def __str__(self):
        return f"{self.user.username} rented {self.product.name}"
