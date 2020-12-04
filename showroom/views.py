from django.http import HttpResponse
from django.shortcuts import render, redirect
from .models import *


def index(request):
    return render(request, 'index.html')


def car_products(request):
    cars = Car.objects.all()
    return render(request, 'car-products.html', {'cars': cars})


def login(request):
    return render(request, 'login.html')
