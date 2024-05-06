from rest_framework.serializers import *
from .models import *
from django.contrib.auth.models import User

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