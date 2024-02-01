from unicodedata import name
from django.contrib import admin
from django.urls import path
from control import views

urlpatterns = [
    path('',views.home,name='home'),
    path('home',views.home,name="home"),
    path('check',views.check,name="check"),
    path('aboutUs',views.aboutus,name="aboutUs"),
    path('userFeedback',views.userFeedback,name="userFeedback"),
    
    path('cet',views.cet,name='cet'),
    path('jee',views.jee,name='jee'),
    
    path('male',views.male,name='male'),
    path('female',views.female,name='female'),
    
    path('obc',views.obc,name='female'),
    path('sc',views.sc,name='female'),
    path('st',views.st,name='female'),
    path('nt',views.nt,name='female'),
    path('open',views.open,name='female')
    
    
]