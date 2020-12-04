from django.http import HttpResponse
from django.shortcuts import render, redirect


def index(request):
    return render(request, 'index.html')


def car_products(request):
    return render(request, 'navbar.html')
