from rest_framework import serializers
from django.contrib.auth.models import User
from django.contrib.auth import authenticate
from django.utils.crypto import get_random_string
from twilio.rest import Client
from .models import Profile, FileError, Notifications, Subscriptions

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
        twilio_account_sid = '<REDACTED>'
        twilio_auth_token = '<REDACTED>'
        twilio_phone_number = '<REDACTED>'
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
        model = User
        fields = ['username', 'password', 'email', 'phone_number' 'first_name', 'last_name', 'address', 'profile']

    def create(self, validated_data):
        profile_data = validated_data.pop('profile')
        user = Profile.objects.create_user(**validated_data)  # type: ignore

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



