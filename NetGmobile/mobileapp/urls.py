from django.urls import path, re_path
from . import views
from django.contrib.auth import views as auth_views


urlpatterns = [
    path('', views.index.as_view(template_name='homepage.dart')),       
    path('login/', views.login.as_view(template_name='login.dart')),         
    path('signup/', views.signup.as_view(name='signup.dart')),         
    path('verify_code/', views.verify_code.as_view(template_name='verify_code.dart')),      
    path('welcome/', views.welcome.as_view(template_name='welcome.dart')),         
    path('user_profile/', views.UserDetailUpdateView.as_view(template_name='user_profile.dart')),      
    path('user_info/', views.UserDetailUpdateView.as_view(template_name='user_info.dart')),       
    path('change_password/', views.change_password.as_view(template_name='change_password.dart')),       
    path('user_info_update/', views.UserDetailUpdateView.as_view(template_name='user_info_update.dart')),     
    path('forgot_password/', views.forgot_password.as_view(template_name='forgot_password.dart')),  
    path('new_password/', views.new_password.as_view(template_name='new_password.dart')),      
    path('special/', views.special.as_view(template_name='special.dart')),
    path('support/', views.support.as_view(template_name='support.dart')),
    path('faq/', views.faq.as_view(template_name='faq.dart')),
    path('contact/', views.contact_us.as_view(template_name='contact_us.dart')),
    path('packages/', views.packages.as_view(template_name='packages.dart')),
    path('repairement/', views.development.as_view(template_name='repairement.dart')),
    path('logout/', auth_views.LogoutView.as_view(next_page='login')),
] 
