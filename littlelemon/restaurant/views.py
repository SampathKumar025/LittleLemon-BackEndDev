from django.shortcuts import render
from rest_framework.generics import ListCreateAPIView, RetrieveUpdateDestroyAPIView
from rest_framework.viewsets import ModelViewSet
from rest_framework.permissions import IsAuthenticated, BasePermission
from .serializers import *
from .models import *

class IsManager(BasePermission):

    def has_permission(self, request, view):
        return request.user.groups.filter(name='Manager').exists()
    
class IsDelivery(BasePermission):

    def has_permission(self, request, view):
        return request.user.groups.filter(name='Delivery').exists()

class IsManagerorDelivery(BasePermission):

    def has_permission(self, request, view):
        return request.user.groups.filter(name='Manager').exists() or request.user.groups.filter(name='Delivery').exists()

# Create your views here.
class MenuItemsView(ListCreateAPIView):
    queryset = MenuItem.objects.all()
    serializer_class = MenuItemSerializer

    def get_permissions(self):
        if(self.request.method=='GET'):
            return []
        return [IsManager()]

class SingleMenuItemView(RetrieveUpdateDestroyAPIView):
    queryset = MenuItem.objects.all()
    serializer_class = MenuItemSerializer

    def get_permissions(self):
        if(self.request.method=='GET'):
            return []
        return [IsManager()]

class BookingView(ListCreateAPIView):
    queryset = Booking.objects.all()
    serializer_class = BookingSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        if self.request.user.groups.filter(name='Manager').exists():
            return Booking.objects.all()
        else:
            return Booking.objects.filter(user=self.request.user)
    
class SingleBookingView(RetrieveUpdateDestroyAPIView):
    queryset = Booking.objects.all()
    serializer_class = BookingSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        if self.request.user.groups.filter(name='Manager').exists():
            return Booking.objects.all()
        else:
            return Booking.objects.filter(user=self.request.user)
        
class OrderView(ListCreateAPIView):
    queryset = Order.objects.all()
    serializer_class = OrderSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        if self.request.user.groups.filter(name='Manager').exists():
            return Order.objects.all()
        elif self.request.user.groups.filter(name='Delivery').exists():
            return Order.objects.filter(delivery_crew=self.request.user)
        else:
            return Order.objects.filter(user=self.request.user)
    
class SingleOrderView(RetrieveUpdateDestroyAPIView):
    queryset = Order.objects.all()
    serializer_class = OrderSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        if self.request.user.is_authenticated:
            if self.request.user.groups.filter(name='Manager').exists():
                return Order.objects.all()
            elif self.request.user.groups.filter(name='Delivery').exists():
                return Order.objects.filter(delivery_crew=self.request.user)
            else:
                return Order.objects.filter(user=self.request.user)
        else:
            return Order.objects.none()
        
    def get_permissions(self):
        if(self.request.method=='GET'):
            return []
        elif(self.request.method=='PATCH'):
            return [IsManagerorDelivery()]
        return [IsManager()]