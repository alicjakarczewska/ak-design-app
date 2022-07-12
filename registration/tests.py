from django.test import TestCase
from django.urls import resolve, reverse
from django.http import HttpRequest
from django.test import Client

from registration.views import register
from blog.views import home
from .forms import *

class RegistrationPageTest(TestCase):

    # creating instance of a client.
    def setUp(self):
        self.client = Client()

    def test_register_url_resolves_to_register_page_view(self):
        found = resolve('/register/')
        self.assertEqual(found.func, register)

    def test_register_page_returns_correct_html(self):
        # register page should contain form where user can provide username, email and password
        response = self.client.get('/register/')
        self.assertIn(b'<form method="POST" class="form-group">', response.content)
        self.assertIn(b'username', response.content)
        self.assertIn(b'email', response.content)
        self.assertIn(b'password', response.content)
        
    def test_register_page_can_save_a_POST_request(self):
        request = HttpRequest()
        request.method = 'POST'
        response = register(request)
        self.assertEqual(response.status_code, 200)

class LoginPageTest(TestCase):

    # creating instance of a client.
    def setUp(self):
        self.client = Client()

    def test_login_page_returns_correct_html(self):
        response = self.client.post('/login/', {'username': 'john', 'password': 'smith'})

        # Login page should contain form where user can provide username and password
        self.assertIn(b'<form method="post" class="form-group">',response.content)
        self.assertIn(b'username',response.content)
        self.assertIn(b'password',response.content)

