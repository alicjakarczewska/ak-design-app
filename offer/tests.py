from django.test import TestCase
from django.urls import resolve, reverse
from django.http import HttpRequest
from django.test import Client

from offer.views import OfferView, contact
from blog.views import home
from offer.models import Service

from django.contrib.auth.models import User
from django.test.client import Client

from io import BytesIO

class OfferPageTest(TestCase):
    # creating instance of a client
    def setUp(self):
        self.client = Client()

    def test_offer_response_status_200(self):
        response = self.client.get('/offer/')
        self.assertEqual(response.status_code, 200)

    def test_user_can_add_service(self):
        self.client.post('/add_service/', {'title':"New Service", 'description': "Super Service"})
        self.assertEqual(Service.objects.last().description, "Super Service")
    

class ContactPageTest(TestCase):
    # creating instance of a client
    def setUp(self):
        self.client = Client()

    def test_contact_url_response_status_200(self):
        response = self.client.get('/contact/')
        self.assertEqual(response.status_code, 200)

    def test_contact_returns_correct_html(self):
        response = self.client.post('/contact/', {'message-name': 'jan','message-surname': 'kowal', 'message-email': 'jan@email.com', 'message': 'Hello',})
        self.assertIn(b'wiadomosc',response.content)




