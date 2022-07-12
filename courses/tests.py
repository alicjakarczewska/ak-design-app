from django.test import TestCase
from django.urls import resolve, reverse
from django.http import HttpRequest
from django.test import Client


from courses.models import Course, Lesson

from django.contrib.auth.models import User
from django.test.client import Client

class OfferPageTest(TestCase):
    # creating instance of a client
    def setUp(self):
        self.client = Client()

    def test_offer_response_status_200(self):
        response = self.client.get('/offer/')
        self.assertEqual(response.status_code, 200)
    

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




