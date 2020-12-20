from django.http import HttpResponse
from django.shortcuts import render, redirect
from .models import *
from .filters import *
from django.contrib.auth.models import User, auth
from django.contrib import messages


def index(request):
    return render(request, 'index.html')


def car_products(request):
    cars = Car.objects.all()
    myFilter = CarFilter(request.GET, queryset=cars)
    cars = myFilter.qs
    context = {'cars': cars, 'myFilter': myFilter}
    return render(request, 'car-products.html', context)


def login(request):
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']
        customer = Customer.objects.get(email=email)
        if customer.password == password:
            print('success')
            return redirect(index)
        else:
            messages.info(request, 'invalid email or password')
            print('failed')
            return redirect('login')
    else:
        return render(request, 'login.html')


def signup(request):
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        phone = request.POST['phone']
        password1 = request.POST['password1']
        password2 = request.POST['password2']
        if Customer.objects.filter(email=email).exists():
            messages.info(request, 'email already exists!')
            return redirect('signup')
        else:
            user = Customer(password=password1, email=email,
                            name=name, phone=phone)
            user.save()
            return redirect('login')
    else:
        return render(request, 'signup.html')


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


def singlecar(request, pk):
    product = Car.objects.get(id=pk)
    context = {'product': product}
    return render(request, 'single-product.html', context)


def singleaccessory(request, pk):
    product = Accesories.objects.get(id=pk)
    context = {'product': product}
    return render(request, 'single-product.html', context)


def contact_us(request):
    return render(request, 'contact_us.html')

def about_us(request):
    return render(request, 'about-us.html')
