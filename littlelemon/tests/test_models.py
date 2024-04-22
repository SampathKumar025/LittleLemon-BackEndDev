from django.test import TestCase
from restaurant.models import *
import datetime

#TestCase class
class MenuItemTest(TestCase):
    def test_get_item(self):
        item = MenuItem.objects.create(title="IceCream", price=80, inventory=100)
        self.assertEqual(str(item), "IceCream : 80")

class BookingTest(TestCase):
    def test_get_booking(self):
        booking = Booking.objects.create(name="Test User", no_of_guests=2, booking_date="2024-04-24 16:00:00")
        self.assertEqual(str(booking), "Test User")