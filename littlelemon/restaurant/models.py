from django.db import models
from django.contrib.auth.models import User
import datetime

# Create your models here.
class Booking(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    no_of_guests = models.IntegerField(null=False)
    booking_date = models.DateTimeField()

    def __str__(self):
        return self.name
    

class MenuItem(models.Model):
    title = models.CharField(max_length=255)
    description = models.CharField(max_length=1000, null=True)
    price = models.DecimalField(null=False, max_digits=10, decimal_places=2)
    inventory = models.IntegerField()

    def __str__(self):
        return f'{self.title} : {str(self.price)}'
    

class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    order_items = models.ManyToManyField(MenuItem)
    delivery_crew = models.ForeignKey(User, on_delete=models.SET_NULL, related_name="delivery_crew", null=True)
    delivery_status = models.BooleanField(db_index=True, default=False)
    order_datetime = models.DateTimeField(default=datetime.datetime.now().replace(microsecond=0))
    total_amount = models.DecimalField(max_digits=6, decimal_places=2, null=True)
    
    def __str__(self):
        return self.user.first_name