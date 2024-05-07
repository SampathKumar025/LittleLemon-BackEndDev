from rest_framework.serializers import *
from .models import *
from django.contrib.auth.models import User
import random

class BookingSerializer(ModelSerializer):
    user = PrimaryKeyRelatedField(
                queryset=User.objects.filter(groups=3),
                default=CurrentUserDefault()
        )

    class Meta:
        model = Booking
        fields = '__all__'


class MenuItemSerializer(ModelSerializer):
    class Meta:
        model = MenuItem
        fields = '__all__'


class OrderSerializer(ModelSerializer):
    user = PrimaryKeyRelatedField(queryset=User.objects.filter(groups=3),default=CurrentUserDefault())
    total_amount = DecimalField(max_digits=6, decimal_places=2, read_only=True)
    delivery_crew = PrimaryKeyRelatedField(read_only=True)
    delivery_status = models.BooleanField(default=False)
    order_datetime = DateTimeField(read_only=True)
    
    class Meta:
        model = Order
        fields = '__all__'

    def create(self, validated_data):
        order_items_data = validated_data.pop('order_items')
        order = Order.objects.create(**validated_data)
        total_amount = sum(item.price for item in order_items_data)
        order.total_amount = total_amount
        order.delivery_crew = random.choice(User.objects.filter(groups=2))
        order.save()
        order.order_items.set(order_items_data)
        return order