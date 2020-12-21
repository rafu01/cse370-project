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
    path('signup', views.signup, name='signup'),
    path('s/', views.search, name='search'),
    path('accessories', views.accessories, name='accessories'),
    path('car/<str:pk>/', views.singlecar, name='car'),
    path('accessory/<str:pk>/', views.singleaccessory, name='accessory'),
    path('contact-us', views.contact_us, name='contact'),
    path('about-us', views.about_us, name='about-us'),
    path('logout',views.logout, name='logout'),
    path('booking/<str:pk>/',views.booking, name='booking'),
]
