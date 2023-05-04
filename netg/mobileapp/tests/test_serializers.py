import unittest
from django.test import TestCase
from django.contrib.auth.models import User
from mobileapp.serializers import UserSerializer, PasswordSerializer, ProfileSerializer, FileErrorSerializer, NotificationsSerializer, SubscriptionsSerializer


class SerializerTest(TestCase):

    def setUp(self):
        self.user = User.objects.create_user(
            username='testuser', password='testpass', phone_number='5555555')
        self.user.save()

    def test_profile_serializer(self):
        data = {'phone_number': '5555555', 'verification_code': '123456'}
        serializer = ProfileSerializer(data)
        self.assertTrue(serializer.is_valid())
        serializer.save()

    def test_user_serializer(self):
        data = {
            'username': 'testuser1',
            'password': 'testpass1',
            'profile': {
                'phone_number': '5555555',
                'verification_code': '123456'
            }
        }
        serializer = UserSerializer(data)
        self.assertTrue(serializer.is_valid())
        user = serializer.save()
        self.assertEqual(user.username, data['username'])
        self.assertEqual(user.profile.phone_number, data['profile']['phone_number'])
        self.assertEqual(user.profile.verification_code, data['profile']['verification_code'])

    def test_password_serializer(self):
        data = {'old_password': 'testpass', 'new_password1': 'testpass1', 'new_password2': 'testpass1', 'verification_code': '123456'}
        serializer = PasswordSerializer(data, context={'user': self.user})
        self.assertTrue(serializer.is_valid())
        serializer.save()

    def test_file_error_serializer(self):
        data = {'title': 'Test Error', 'description': 'This is a test error', 'user': self.user}
        serializer = FileErrorSerializer(data)
        self.assertTrue(serializer.is_valid())
        serializer.save()

    def test_notifications_serializer(self):
        data = {'title': 'Test Notification', 'description': 'This is a test notification', 'user': self.user}
        serializer = NotificationsSerializer(data)
        self.assertTrue(serializer.is_valid())
        serializer.save()

    def test_subscriptions_serializer(self):
        data = {'title': 'Test Subscription', 'description': 'This is a test subscription', 'user': self.user}
        serializer = SubscriptionsSerializer(data)
        self.assertTrue(serializer.is_valid())
        serializer.save()
