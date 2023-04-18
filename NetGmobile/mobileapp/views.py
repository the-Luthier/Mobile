from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from .forms import UserCreationForm, VerifyForm, LoginForm, PasswordResetForm, UserInfoForm, PasswordChangeForm
from .decorators import verification_required
from rest_framework import generics
from rest_framework.permissions import IsAuthenticated
from .serializers import UserSerializer
from . import verify
from .models import User

# Create your views here.

def login(request):
    template_name = 'login.dart'    
    if request.method == 'POST':
        form = LoginForm(request.POST)
        if form.is_valid():
          if User is not None:
            verify.send(form.cleaned_data.get('phone'))
            return redirect('verify_code') 
          
    else :
     return render(request, 'login')


@login_required
@verification_required
def index(request):
  template_name = 'homepage.dart'
  return render(request, 'homepage')


def signup(request):
    template_name = 'signup.dart'    
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
          if User is not None:
            form.save()
            verify.send(form.cleaned_data.get('phone'))
            return redirect('verify_code')
    else :
     return render(request, 'signup.dart')
    
    
    
#def register(request):
#    template_name = 'signup.dart'    
#    if request.method == 'POST':
#        form = UserCreationForm(request.POST)       
#        if form.is_valid():                              
#         if User is not None:
#            form.save()
#            verify.send(form.cleaned_data.get('phone'))
#            return redirect('welcome.dart')
#    else :
#       return render(request, 'signup.dart')
            
        
@login_required
def verify_code(request):
    template = 'verify_code.dart'
    if request.method == 'POST':
        form = VerifyForm(request.POST)
        if form.is_valid():
            code = form.cleaned_data.get('code')
            if verify.check(request.user.phone, code):
                request.user.is_verified = True
                request.user.save()
                return redirect('index')
    else:
        form = VerifyForm()
    return render(request, 'signup.dart')


@login_required
def welcome(request):
  template_name = 'welcome.dart'
  if User is not None:
    return redirect('user_info_update')
  else:
    return redirect('signup')



@verification_required
def forgot_password(request):
    template_name = 'forgot_password.dart'    
    if request.method == 'POST':
        form = PasswordResetForm(request.POST)
        if form.is_valid():
          if User is not None:
            form.save()
            verify.send(form.cleaned_data.get('phone'))
            return redirect('new_password')
    else :
      return render(request, 'forgot_password.dart')



@verification_required
def new_password(request):
    template_name = 'new_password.dart'    
    if request.method == 'POST':
          if User is not None:
            return redirect('login')
    else :
      return render(request, 'new_password.dart')
  
  
  
@login_required 
def user_profile(request):
  template_name = 'user_profile.dart'    
  return redirect('user_profile')
        
        
@login_required
def user_info(request):
  template_name = 'user_info.dart'    
  return redirect('user_info')  
  
    
    
@login_required   
def user_info_update(request):
    template_name = 'user_info_update.dart'    
    if request.method == 'POST':
        form = UserInfoForm(request.POST)
        if form.is_valid():
          if User is not None:
            form.save()     #type: ignore
            return redirect('homepage.dart')
    else :
        return render(request, 'signup.dart', {'form': UserCreationForm()})
    return render(request, 'user_profile.dart')


@verification_required
def change_password(request):
  template_name = 'change_password.dart'
  if request.method == 'POST':
    form = PasswordChangeForm(request.POST)
    if form.is_valid():
      if User is not None:
        form.save() #type: ignore
        return redirect('login')
  

def services(request):
  template_name = 'services.dart'
  return render(request, 'services.dart')
  
  
  
@login_required
def special(request):
    template_name = 'special.dart'
    return render(request, 'special.dart')
  
  
@login_required
def packages(request):
    template_name = 'packages.dart'
    return render(request, 'packages.dart')
  
  
@login_required 
def support(request):
  template_name = 'support.dart'
  return render(request, 'support.dart')   


@login_required
def faq(request):
  template_name = 'faq.dart'
  return render(request, 'faq.dart')


@login_required
def contact_us(request):
  template_name = 'contact_us.dart'
  return render(request, 'contact_us.dart')


@login_required
def development(request):
  template_name = 'development.dart'
  return render(request, 'development.dart')


def logout(request):
  return redirect(request, 'login')