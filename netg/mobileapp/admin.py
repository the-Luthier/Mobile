from django.contrib import admin
from .models import Profile
from .models import Device
from .utils import send_push_notifications

def send_notifications(modeladmin, request, queryset):
    profile_ids = queryset.values_list('id', flat=True)
    device_tokens = Device.objects.filter(profile__in=profile_ids).values_list('device_token', flat=True)
    
    title = "Your notification title"
    message = "Your notification message"
    
    send_push_notifications(device_tokens, title, message)

send_notifications.short_description = "Send notifications to selected profiles"

class CustomProfileAdmin(admin.ModelAdmin):
    actions = [send_notifications]

admin.site.unregister(Profile)
admin.site.register(Profile, CustomProfileAdmin)
