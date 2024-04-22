from django.urls import path, include
from .views import *
from rest_framework.routers import DefaultRouter
from rest_framework.authtoken.views import obtain_auth_token

router = DefaultRouter()
router.register('tables', BookingViewSet)

urlpatterns = [
    path('menu-items/', MenuItemsView.as_view()),
    path('menu-item/<int:pk>',SingleMenuItemView.as_view()),
    path('booking/', include(router.urls)),
    path('api-token-auth/', obtain_auth_token),
]