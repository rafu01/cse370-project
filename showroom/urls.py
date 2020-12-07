from django.urls import path
from django.contrib import admin
from . import views
from django.conf.urls import include, url
from django.conf.urls.static import static

admin.site.site_header = 'Admin'
admin.site.site_title = 'Gear Up Administration'
admin.site.index_title = 'Dashboard'

urlpatterns = [
    path('', views.index, name='index'),
    path('car-products', views.car_products, name='car-products'),
    path('login', views.login, name='login'),
    path('s/', views.search, name='search'),
    path('accessories', views.accessories, name='accessories')
]
