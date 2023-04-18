from django.db import models

# Create your models here.

from django.contrib.auth.models import User

class User(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    phone_number = models.CharField(max_length=15, blank=False)
    verification_code = models.CharField(max_length=6, blank=False)
    is_verified = models.BooleanField(default=False)

    def __str__(self):
            return f'{self.user.username}\'s profile'