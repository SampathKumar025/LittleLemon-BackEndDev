from django.test import TestCase
from restaurant.models import MenuItem
from restaurant.views import MenuItemsView
from rest_framework.test import APIRequestFactory
import json


class MenuViewTest(TestCase):
    def setUp(self):
        self.factory = APIRequestFactory()
        MenuItem.objects.create(title="IceCream", price=80, inventory= 20)
        MenuItem.objects.create(title="Pizza", price=120, inventory= 30)

    def test_get_all_menus(self):
        request = self.factory.get("/menu-items/")
        response = MenuItemsView.as_view()(request)
        self.assertEqual(response.status_code, 200)
        response.render()
        data = json.loads(response.content)
        self.assertEqual(len(data), 2)
