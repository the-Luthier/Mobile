from django.test import TestCase
from django.contrib.auth.models import User
from NetGmobile.mobileapp.models import Profile, FileError, Notifications, Subscriptions


class ProfileModelTest(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='testuser', password='testpass')
        self.profile = Profile.objects.create(user=self.user, full_name='Test User', phone_number='123456789', verification_code='123456')

    def test_profile_str(self):
        self.assertEqual(str(self.profile), "testuser's profile")


class FileErrorModelTest(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='testuser', password='testpass')
        self.file_error = FileError.objects.create(user=self.user, title='Test Error', description='This is a test error.')

    def test_file_error_str(self):
        self.assertEqual(str(self.file_error), "Test Error")


class NotificationsModelTest(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='testuser', password='testpass')
        self.notification = Notifications.objects.create(user=self.user, title='Test Notification', description='This is a test notification.')

    def test_notification_str(self):
        self.assertEqual(str(self.notification), "Test Notification")


class SubscriptionsModelTest(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='testuser', password='testpass')
        self.subscription = Subscriptions.objects.create(user=self.user, title='Test Subscription', description='This is a test subscription.')

    def test_subscription_str(self):
        self.assertEqual(str(self.subscription), "Test Subscription")
