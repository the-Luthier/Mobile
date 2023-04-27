from django.urls import path, re_path
from . import views
from django.contrib.auth import views as auth_views


urlpatterns = [
    path('main/', views.index, name='index'),       
    path('login/', views.login, name='login'),         
    path('signup/', views.signup, name='signup'),         
    path('verify_code/', views.verify_code, name='verify_code'),      
    path('welcome/', views.welcome, name='welcome'),         
    path('user_profile/', views.UserDetailUpdateView.as_view(), name='user_profile'),      
    path('user_info/', views.UserDetailUpdateView.as_view(), name='user_info'),       
    path('change_password/', views.change_password, name='change_password'),       
    path('user_info_update/', views.UserDetailUpdateView.as_view(), name='user_info_update'),     
    path('forgot_password/', views.forgot_password, name='forgot_password'),  
    path('new_password/', views.new_password, name='new_password'),      
    path('special/', views.special, name='special'),
    path('support/', views.support, name='support'),
    path('faq/', views.faq, name='faq'),
    path('contact/', views.contact_us, name='contact_us'),
    path('packages/', views.packages, name='packages'),
    path('repairement/', views.development, name='repairement'),
    path('logout/', auth_views.LogoutView.as_view(next_page='login'), name='logout'),
]

