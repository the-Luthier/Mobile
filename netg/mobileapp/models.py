from django.db import models

from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver



class Profile(models.Model):
    id = models.AutoField(primary_key=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    full_name = models.CharField(max_length=200, blank=False)
    phone_number = models.CharField(max_length=15, blank=False)
    verification_code = models.CharField(max_length=6, blank=False)
    is_verified = models.BooleanField(default=False, blank=False) 

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