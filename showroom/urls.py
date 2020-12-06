from django.urls import path
from django.contrib import admin
from . import views

admin.site.site_header = 'Gear Up Administration'
admin.site.site_title = 'Gear Up Administration'
admin.site.index_title = 'Welcome to Gear Up Administration'

urlpatterns = [
    path('', views.index, name='index'),
    path('car-products', views.car_products, name='car-products'),
    path('login', views.login, name='login')
]
