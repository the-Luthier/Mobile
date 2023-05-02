from django.test import TestCase, Client
from django.urls import reverse
from rest_framework import status
from rest_framework.test import APITestCase, APIClient
from django.contrib.auth.models import User


class LoginViewTestCase(APITestCase):
    def setUp(self):
        self.client = APIClient()
        self.login_url = reverse('login')
        self.user = User.objects.create_user(username='testuser', password='testpass', phone_number='5555555')

    def test_login(self):
        # Test login with valid credentials
        data = {
            'username': 'testuser',
            'password': 'testpass',
            'phone_number': '5555555'
        }
        response = self.client.post(self.login_url, data)
        self.assertEqual(response.status_code, status.HTTP_200_OK)
        self.assertIn('Verification code sent', response['message'])

        # Test login with missing required fields
        data = {
            'username': 'testuser'
        }
        response = self.client.post(self.login_url, data)
        self.assertEqual(response.status_code, status.HTTP_400_BAD_REQUEST)
        self.assertIn('Missing required fields', response['error'])

        # Test login with invalid credentials
        data = {
            'username': 'testuser',
            'password': 'wrongpass',
            'phone_number': '5555555'
        }
        response = self.client.post(self.login_url, data)
        self.assertEqual(response.status_code, status.HTTP_401_UNAUTHORIZED)
        self.assertIn('Invalid username or password', response['error'])
