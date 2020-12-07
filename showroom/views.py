from django.http import HttpResponse
from django.shortcuts import render, redirect
from .models import *
from .filters import *


def index(request):
    return render(request, 'index.html')


def car_products(request):
    cars = Car.objects.all()
    myFilter = CarFilter(request.GET, queryset=cars)
    cars = myFilter.qs
    context = {'cars': cars, 'myFilter': myFilter}
    return render(request, 'car-products.html', context)


def login(request):
    return render(request, 'login.html')


def search(request):
    try:
        query = request.GET.get('search')
    except:
        query = None
    if query:
        products = Products.objects.filter(name__icontains=query)
        template = 'search.html'
        context = {'query': query, 'products': products}
    else:
        template = 'search.html'
        context = {'query': ''}

    return render(request, template, context)


def accessories(request):
    accessories = Accesories.objects.all()
    myFilter = AccessoriesFilter(request.GET, queryset=accessories)
    accessories = myFilter.qs
    context = {'accessories': accessories, 'myFilter': myFilter}
    return render(request, 'accessories.html', context)
