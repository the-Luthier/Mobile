from django import forms
from django.contrib.auth.forms import UserCreationForm  as BaseUserCreationForm
from django.contrib.auth.forms import AuthenticationForm, PasswordResetForm as BasePasswordResetForm
from .models import User


class LoginForm(AuthenticationForm):
    phone_number = forms.CharField(max_length=20, required=True, help_text='Phone number')
    
    class Meta:
        model = User
        fields = ('phone_number', 'password')



class UserCreationForm(BaseUserCreationForm):
    phone_number = forms.CharField(max_length=20, required=True, help_text='Phone number')

    class Meta:
        model = User
        fields = ('username', 'phone_number', 'password', 'password_again')



class VerifyForm(forms.Form):
    code = forms.CharField(max_length=6, required=True, help_text='Enter code')
    
    
    
class PasswordResetForm(BasePasswordResetForm):
    phone_number = forms.CharField(max_length=20, required=True, help_text='Phone number')
    
    class Meta:
        model = User
        fields = ('phone_number')


class PasswordChangeForm(forms.Form):
    password = forms.CharField(max_length=20, required=True, help_text='Old password')
    new_password = forms.CharField(max_length=20, required=True, help_text='New password')
    new_password2 = forms.CharField(max_length=20, required=True, help_text='New password again')
    
    
    class Meta:
        model = User
        fields = ('password', 'new_password1', 'new_password2')
        
        
        
class UserInfoForm(forms.Form):
    user_name = forms.CharField(max_length=11, unique=True, required=True, help_text='Username') #type: ignore
    phone = forms.CharField('+90',min_length=10, max_length=10, unique=True, required=True, help_text='5XXXXXXXX')  # type: ignore
    email = forms.CharField(max_length=100, required=False, help_text='Email')
    adress = forms.CharField(max_length=250, required=True, help_text='Adress')
    
    class Meta:
        model = User
        fields = ('username', 'phone_number', 'email', 'adress', 'address', 'first_name', 'last_name',)