from django.db import models

from django.contrib.auth.models import AbstractUser
from django.db.models.signals import post_save
from django.dispatch import receiver



class User(AbstractUser):

    id = models.AutoField(primary_key=True)
    phone_number = models.CharField(max_length=15, blank=False)
    verification_code = models.CharField(max_length=6, blank=False)

    REQUIRED_FIELDS = ['phone_number', 'full_name', 'adress', 'verification_code', 'is_verified', 'date_of_birth',]


class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    is_staff = models.BooleanField(default=False,blank=False)
    is_admin = models.BooleanField(default=False, blank=False)
    is_client = models.BooleanField(default=True, blank=False)
    id = models.AutoField(primary_key=True)    
    full_name = models.CharField(max_length=200, blank=False)
    phone_number = models.CharField(max_length=15, blank=False)
    e_mail = models.CharField(max_length=100, blank=False)
    adress = models.CharField(max_length=255, blank=False)
    verification_code = models.CharField(max_length=6, blank=False)
    is_verified = models.BooleanField(default=False, blank=False) 
    date_of_birth = models.DateField()

    def __str__(self):
            return f'{self.user.username}\'s profile'    
    


class FileError(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    title = models.CharField(max_length=200)
    description = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.MultipleObjectsReturned('title', 'description', 'created_at', 'user',)
    
    @receiver(post_save, sender=User)
    def create_user_profile(sender, instance, created, **kwargs):
      if created:
        Profile.objects.create(user=instance)

    @receiver(post_save, sender=User)
    def save_user_profile(sender, instance, **kwargs):
       instance.profile.save()


class Notifications(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    title = models.CharField(max_length=200)
    description = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.MultipleObjectsReturned('title', 'description',)



class Subscriptions(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    title = models.CharField(max_length=200)
    description = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.MultipleObjectsReturned('title', 'description', 'created_at', 'user',)
    

class Device(models.Model):
    user = models.OneToOneField(Profile, on_delete=models.CASCADE)
    device_token = models.CharField(max_length=255, unique=True)
