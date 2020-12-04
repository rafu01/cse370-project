from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('car-products', views.car_products, name='car-products'),
    path('login', views.login, name='login')
]
