from django.urls import path, include
from .views import *
from rest_framework.authtoken.views import obtain_auth_token

urlpatterns = [
    path('menu-items/', MenuItemsView.as_view()),
    path('menu-items/<int:pk>',SingleMenuItemView.as_view()),
    path('table-booking/', BookingView.as_view()),
    path('table-booking/<int:pk>', SingleBookingView.as_view()),
    path('orders/', OrderView.as_view()),
    path('orders/<int:pk>', SingleOrderView.as_view()),
    path('api-token-auth/', obtain_auth_token),
]