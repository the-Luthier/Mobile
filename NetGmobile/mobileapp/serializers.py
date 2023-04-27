import os

from rest_framework import serializers
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, get_user_model
from django.utils.crypto import get_random_string
from twilio.rest import Client
from .models import Profile, FileError, Notifications, Subscriptions
from .forms import PasswordChangeForm, UserInfoForm, PasswordResetForm, LoginForm, VerifyForm, UserCreationForm
from django.contrib.auth.hashers import make_password


class ProfileSerializer(serializers.ModelSerializer):
    phone_number = serializers.CharField(required=True, write_only=True)
    verification_code = serializers.CharField(required=True, write_only=True)

    class Meta:
        model = Profile
        fields = ['phone_number', 'verification_code']

    def create(self, validated_data):
        phone_number = validated_data['phone_number']
        verification_code = validated_data['verification_code']

        # Generate a random verification code and store it in the user's profile
        user_profile = Profile.objects.get(phone_number=phone_number)
        user_profile.verification_code = verification_code
        user_profile.save()

        # Send the verification code via SMS
        twilio_account_sid = os.getenv("TWILIO_ACCOUNT_SID")
        twilio_auth_token = os.getenv("TWILIO_AUTH_TOKEN")
        twilio_phone_number = os.getenv("TWILIO_PHONE_NUMBER")
        client = Client(twilio_account_sid, twilio_auth_token)
        message = client.messages.create(
            body=f'Your verification code is {verification_code == get_random_string(length=6)}',
            from_=twilio_phone_number,
            to=phone_number
        )

        return validated_data

class UserSerializer(serializers.ModelSerializer):
    profile = ProfileSerializer(required=True)

    class Meta:
        model = Profile
        fields = ['username', 'password', 'email', 'phone_number', 'first_name', 'last_name', 'address', 'profile']

    def create(self, validated_data):
        profile_data = validated_data.pop('profile')
        user = Profile.objects.create_user(**validated_data)  

        # Create a Profile instance for the user and save the phone number
        Profile.objects.create(user=user, phone_number=profile_data['phone_number'])

        return user

    def validate(self, data):
        username = data.get('username', None)
        password = data.get('password', None)

        if not username:
            raise serializers.ValidationError('Username is required')
        if not password:
            raise serializers.ValidationError('Password is required')

        user = authenticate(username=username, password=password)
        if not user:
            raise serializers.ValidationError('Invalid username/password')

        # Check if the verification code is correct
        profile = Profile.objects.get(user=user)
        if profile.verification_code != data['profile']['verification_code']:
            raise serializers.ValidationError('Incorrect verification code')

        return data



class PasswordSerializer(serializers.Serializer):
    old_password = serializers.CharField(max_length=128, write_only=True)
    new_password1 = serializers.CharField(max_length=128, write_only=True)
    new_password2 = serializers.CharField(max_length=128, write_only=True)

    def validate(self, attrs):
        old_password = attrs.get('old_password')
        new_password1 = attrs.get('new_password1')
        new_password2 = attrs.get('new_password2')
        verification_code = attrs.get('verification_code')


        if not old_password:
            raise serializers.ValidationError('Current password is required')
        if not new_password1:
            raise serializers.ValidationError('New password is required')
        if not new_password2:
            raise serializers.ValidationError('New password confirmation is required')
        if new_password1 != new_password2:
            raise serializers.ValidationError('New passwords do not match')

        user = self.context.get('user')
        if not authenticate(username=Profile.full_name , password=old_password):
            raise serializers.ValidationError('Current password is incorrect')

        try:
            profile = Profile.objects.get(user=user)
        except Profile.DoesNotExist:
            raise serializers.ValidationError('Profile not found')

        if verification_code != profile.verification_code:
            raise serializers.ValidationError('Verification code is incorrect')

        return attrs

    def save(self, **kwargs):
        user = self.context.get('user')
        password = make_password('new_password1')
        user.set_password(password)
        user.save()

        try:
            profile = Profile.objects.get(user=user)
        except Profile.DoesNotExist:
            raise serializers.ValidationError('Profile not found')

        profile.verification_code = get_random_string(length=6)
        profile.save()

        
        

class FileErrorSerializer(serializers.ModelSerializer):
    class Meta:
        model = FileError
        fields = ['id', 'user', 'title', 'description', 'created_at']



class NotificationsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Notifications
        fields = ['id', 'user', 'title', 'description', 'created_at']
        


class SubscriptionsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Subscriptions
        fields = ['id', 'user', 'full_name', 'title', 'created_at']        







