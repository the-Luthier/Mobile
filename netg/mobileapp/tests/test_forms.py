import os
import sys
import unittest
from django.test import TestCase
from django.contrib.auth import get_user_model
from mobileapp.forms import SignUpForm, LoginForm, VerifyForm, PasswordResetForm, PasswordChangeForm, UserInfoForm
from mobileapp.models import Profile
class FormsTestCase(TestCase):

    def setUp(self):
      self.user = get_user_model().objects.create(username='testuser', phone_number='5555555')
      self.user.set_password('testpass')
      self.user.save()


    def test_signup_form(self):
        form_data = {
         'username': 'testuser',
         'phone_number': '5555555555',
         'password1': 'testpassword',
         'password2': 'testpassword',
        }
        form = SignUpForm(data=form_data)
        self.assertTrue(form.is_valid())
        user = get_user_model().objects.create(
          username=form.cleaned_data['username'],
          phone_number=form.cleaned_data['phone_number']
        )
        user.set_password(form.cleaned_data['password1'])
        user.save()
        self.assertEqual(user, 'testuser')
        self.assertEqual(Profile.phone_number, '5555555555')
        self.assertTrue(user.check_password('testpassword'))



    def test_login_form(self):
        form_data = {'phone_number': '5555555', 'password': 'testpass'}
        form = LoginForm(data=form_data)
        self.assertTrue(form.is_valid())

    def test_verify_form(self):
        form_data = {'code': '123456'}
        form = VerifyForm(data=form_data)
        self.assertTrue(form.is_valid())

    def test_password_reset_form(self):
        form_data = {'phone_number': '5555555'}
        form = PasswordResetForm(data=form_data)
        self.assertTrue(form.is_valid())

    def test_password_change_form(self):
        form_data = {'password': 'testpass', 'new_password1': 'newtestpass', 'new_password2': 'newtestpass'}
        form = PasswordChangeForm(data=form_data)
        self.assertTrue(form.is_valid())

    def test_user_info_form(self):
        form_data = {'user_name': 'testuser', 'phone': '5555555', 'email': 'test@example.com', 'adress': 'test address'}
        form = UserInfoForm(data=form_data)
        self.assertTrue(form.is_valid())

if __name__ == '__main__':
    unittest.main()
