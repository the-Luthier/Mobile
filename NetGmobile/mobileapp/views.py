from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login as django_login
from .forms import UserCreationForm, VerifyForm, LoginForm, PasswordResetForm, UserInfoForm, PasswordChangeForm
from .decorators import verification_required
from rest_framework import generics, status
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework.decorators import api_view
from .serializers import UserSerializer, ProfileSerializer, FileErrorSerializer, NotificationsSerializer, SubscriptionsSerializer
from . import verify
from .models import User, FileError, Notifications, Subscriptions

# Create your views here.

@api_view(['POST'])
def login(request):      
    if request.method == 'POST':
        username = request.data.get('username')
        password = request.data.get('password')
        phone_number = request.data.get('phone')
        
        if not (username and password and phone_number):
            return Response({'error': 'Missing required fields'}, status=status.HTTP_400_BAD_REQUEST)
        
        user = authenticate(request, username=username, password=password)
        
        if user is not None:
            verify.send(phone_number)
            # Store user ID in the session or use a token-based authentication system (e.g., JWT)
            request.session['user_id'] = user.id
            return Response({'message': 'Verification code sent'}, status=status.HTTP_200_OK)
        else:
            return Response({'error': 'Invalid username or password'}, status=status.HTTP_401_UNAUTHORIZED)

    return Response({'error': 'Method not allowed'}, status=status.HTTP_405_METHOD_NOT_ALLOWED)



@login_required
@verification_required
def index(request):  
  return render(request, 'homepage')


def signup(request):       
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
          if User is not None:
            form.save()
            verify.send(form.cleaned_data.get('phone_number'))
            return redirect('verify_code')
    else :
     return render(request, 'signup.dart')
    
               
        
@login_required
def verify_code(request):    
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
  if User is not None:
    return redirect('user_info_update')
  else:
    return redirect('signup')



@verification_required
def forgot_password(request):       
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
    if request.method == 'POST':
          if User is not None:
            return redirect('login')
    else :
      return render(request, 'new_password.dart')
  
  
      
        
class UserDetailUpdateView(generics.RetrieveUpdateAPIView):
  queryset = User.objects.all()
  serializer_class = UserSerializer

  def get_object(self):
    return self.request.user

  def update(self, request, *args, **kwargs):
    instance = self.get_object()
    form = UserInfoForm(request.POST)
    if form.is_valid():      
      serializer = UserSerializer.self.get_serializer(instance, data=request.data, partial=True)
      serializer.is_valid(raise_exception=True)
      self.perform_update(serializer)
    return Response(UserSerializer.data)
  
    
    
@login_required   
def user_info_update(request):     
    if request.method == 'POST':
        form = UserInfoForm(request.POST)
        if form.is_valid():
          if User is not None:
            form.save()     
            return redirect('homepage.dart')
    else :
        return render(request, 'signup.dart', {'form': UserCreationForm()})
    return render(request, 'user_profile.dart')


@verification_required
@login_required
def change_password(request):  
    if request.method == 'POST':
        serializer = UserSerializer(data=request.POST)
        if serializer.is_valid():
            user = authenticate(request, username=request.user.username, password=serializer.validated_data['password1'])
            if user is not None:
                user.set_password(serializer.validated_data['password1'])
                user.save()
                login(request, user)
                messages.success(request, 'Your password was successfully updated!')
                return redirect('profile')
            else:
                messages.error(request, 'Invalid current password')
        else:
            messages.error(request, 'Please correct the errors below.')
    else:
        serializer = UserSerializer()

    return render(request, 'change_password', {'serializer': serializer})


class FileErrorListCreateView(generics.ListCreateAPIView):
    serializer_class = FileErrorSerializer

    def get_queryset(self):
        return FileError.objects.filter(user=self.request.user)

    def perform_create(self, serializer):
        serializer.save(user=self.request.user)




class NotificationsListCreateView(generics.ListCreateAPIView):
    serializer_class = NotificationsSerializer

    def get_queryset(self):
        return Notifications.objects.filter(user=self.request.user)

    def perform_create(self, serializer):
        serializer.save(user=self.request.user)    


class SubscriptionsListCreateView(generics.ListCreateAPIView):
    serializer_class = SubscriptionsSerializer

    def get_queryset(self):
        return Subscriptions.objects.filter(user=self.request.user)

    def perform_create(self, serializer):
        serializer.save(user=self.request.user)


  

def services(request):  
  return render(request, 'services.dart')
  
  
  
@login_required
def special(request):    
    return render(request, 'special.dart')
  
  
@login_required
def packages(request):    
    return render(request, 'packages.dart')
  
  
@login_required 
def support(request):  
  return render(request, 'support.dart')   


@login_required
def faq(request):  
  return render(request, 'faq.dart')


@login_required
def contact_us(request):  
  return render(request, 'contact_us.dart')


@login_required
def development(request):  
  return render(request, 'development.dart')


def logout(request):
  return redirect(request, 'login')