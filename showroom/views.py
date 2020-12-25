from django.http import HttpResponse
from django.shortcuts import render, redirect
from .models import *
from .filters import *
from django.contrib.auth.models import User, auth
from django.contrib.auth import authenticate
from django.contrib.auth import login as auth_login
from django.contrib.auth import logout as auth_logout
from django.contrib import messages
from django.http import HttpResponseRedirect
import os
from .forms import *


def index(request):
    customer = ""
    if request.user.is_authenticated:
        email = request.user.username
        customer = Customer.objects.get(email=email)
    context = {'customer': customer}
    return render(request, 'index.html', context)


def car_products(request):
    cars = Car.objects.all()
    myFilter = CarFilter(request.GET, queryset=cars)
    cars = myFilter.qs
    customer = ""
    if request.user.is_authenticated:
        email = request.user.username
        customer = Customer.objects.get(email=email)
    context = {'cars': cars, 'myFilter': myFilter, 'customer': customer}
    return render(request, 'car-products.html', context)


def logout(request):
    auth_logout(request)
    print('logout success')
    return redirect(index)


def login(request):
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['password']
        user = authenticate(request, username=email, password=password)
        if user is not None:
            auth_login(request, user)
            print('success')
            customer = Customer.objects.get(email=email)
            user = {'user': user, 'customer': customer}
            return render(request, 'index.html', user)
        else:
            messages.info(request, 'invalid email or password')
            print('failed')
            return render(request, 'login.html')
        # customer = Customer.objects.get(email=email)
        # if customer.password == password:
        #     print('success')
        #     customer.is_logged_in = 1
        #     customer.save()
        #     user = {'customer': customer}
        #     return render(request, 'index.html', user)
        # else:
        #     messages.info(request, 'invalid email or password')
        #     print('failed')
        #     return redirect('login')
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
            user = User.objects.create_user(email, email, password1)
            user.save()
            return redirect('login')
    else:
        return render(request, 'signup.html')


def search(request):
    try:
        query = request.GET.get('search')
    except:
        query = None
    customer = ""
    if request.user.is_authenticated:
        email = request.user.username
        customer = Customer.objects.get(email=email)
    if query:
        products = Products.objects.filter(name__icontains=query)
        template = 'search.html'
        context = {'query': query, 'products': products, 'customer': customer}
    else:
        template = 'search.html'
        context = {'query': '', 'customer': customer}

    return render(request, template, context)


def accessories(request):
    accessories = Accesories.objects.all()
    myFilter = AccessoriesFilter(request.GET, queryset=accessories)
    accessories = myFilter.qs
    customer = ""
    if request.user.is_authenticated:
        email = request.user.username
        customer = Customer.objects.get(email=email)
    context = {'accessories': accessories,
               'myFilter': myFilter, 'customer': customer}
    return render(request, 'accessories.html', context)


def singlecar(request, pk):
    product = Car.objects.get(id=pk)
    customer = ""
    if request.user.is_authenticated:
        email = request.user.username
        customer = Customer.objects.get(email=email)
    context = {'product': product, 'customer': customer}
    return render(request, 'single-product.html', context)


def singleaccessory(request, pk):
    product = Accesories.objects.get(id=pk)
    customer = ""
    if request.user.is_authenticated:
        email = request.user.username
        customer = Customer.objects.get(email=email)
    context = {'product': product, 'customer': customer}
    return render(request, 'single-product.html', context)


def contact_us(request):
    customer = ""
    if request.user.is_authenticated:
        product_list = Products.objects.all()
        manufacter_list = Manufacturer.objects.all()
        email = request.user.username
        customer = Customer.objects.get(email=email)
        try:
            message = UserMessage.objects.get(customers_id=customer.id)
        except:
            message = UserMessage(customers_id=customer.id)

        if request.method == 'POST':
            cmsg = request.POST.get('customer_message')
            product_name = request.POST.get('product_name')
            message.product_name = product_name
            if product_name != '---':
                message.product_manufacturers = Products.objects.get(
                    name=product_name).manufacturers.name
            else:
                message.product_manufacturers = '---'
            message.query = cmsg
            message.reply = " "
            message.save()

        else:
            try:
                message = UserMessage.objects.get(customers_id=customer.id)
            except:
                return render(request, 'contact_us.html', {'customer': customer, 'products': product_list, 'manufacturers': manufacter_list})

        context = {'customer': customer, 'message': message,
                   'products': product_list, 'manufacturers': manufacter_list}
        return render(request, 'contact_us.html', context)
    else:
        return redirect(login)


def about_us(request):
    customer = ""
    if request.user.is_authenticated:
        email = request.user.username
        customer = Customer.objects.get(email=email)
    return render(request, 'about-us.html', {'customer': customer})


# def booking(request, pk):
#     product = Products.objects.get(id=pk)
#     customer = ""
#     if request.user.is_authenticated:
#         email = request.user.username
#         customer = Customer.objects.get(email=email)

#         credit_info = customer.credit_info
#         location = customer.location
#         # if request.method == 'POST':
#         #     quantity = request.POST.get('quantity')
#         #     booking = Booking(customers=customer,product=product,quantity=quantity,price=int(quantity)*float(product.price))
#         #     booking.save()

#         # quantity = request.POST['quantity']
#         path = request.path
#         booking = Booking(customers=customer,product=product,price=product.price,quantity=1)
#         booking.save()
#         print('success')
#         messages.info(request, 'Booking Successful')
#         context = {'product': product, 'customer': customer}
#         return redirect(index)

#     else:
#         return redirect(login)

# def create_booking(request):
#     customer = ""
#     if request.user.is_authenticated:
#         email = request.user.username
#         customer = Customer.objects.get(email=email)
#         if request.method == 'POST':
#             credit_info = request.POST.get('credit')
#             location = request.POST.get('address')
#             quantity = request.POST.get('quantity')
#             booking = Booking(customer=customer,product=product,quantity=quantity,price=int(quantity)*float(product.price))
#             booking.save()
#             print('success')
#         context = {'customer': customer}
#         return render(request, 'index.html', context)

def booking(request, pk):
    customer = ""
    if request.user.is_authenticated:
        email = request.user.username
        customer = Customer.objects.get(email=email)
        # if request.method == 'POST':
        #     qty = request.POST['qty']
        #     print('success')
        #     print('qty', qty)
        # else:
        qty = request.GET.get('qty')
        print(qty)
        qty = int(qty)
        product = Products.objects.get(id=pk)
        booking = Booking(customers=customer, quantity=qty,
                          price=product.price, product=product)
        booking.save()
        product.quantity -= qty
        product.bookings.add(booking)
        product.customers.add(customer)
        product.save()
        customer.bookings.add(booking)
        customer.product.add(product)
        customer.save()

        context = {'customer': customer, 'qty': qty, 'product': product}
        return render(request, 'booking_page.html', context)
        # else:
        #     return HttpResponseRedirect(request.path_info)

    else:
        return redirect(login)


def createbooking(request):
    customer = ""
    if request.user.is_authenticated:
        email = request.user.username
        customer = Customer.objects.get(email=email)
        if request.method == "POST":
            credit = request.POST['credit']
            location = request.POST['location']
            if credit is not "":
                customer.credit_info = credit
            if location is not "":
                customer.location = location
            customer.save()
            return redirect(profile)
        else:
            print('POST Failed')
            return render(request, 'index.html', {'customer': customer})

    else:
        return redirect(login)


def profile(request):
    customer = ""
    if request.user.is_authenticated:
        email = request.user.username
        customer = Customer.objects.get(email=email)
        booking = Booking.objects.filter(
            customers=customer).order_by('date').reverse()
        context = {'customer': customer, 'booking': booking}
        return render(request, 'profile.html', context)
    else:
        return redirect(login)


def updateprofile(request):
    customer = ""
    if request.user.is_authenticated:
        email = request.user.username
        customer = Customer.objects.get(email=email)
        booking = Booking.objects.filter(
            customers=customer).order_by('date').reverse()
        if request.method == "POST":
            fullname = request.POST.get('fullname', default=customer.name)
            email = request.POST.get('email', default=customer.email)
            phone = request.POST.get('phone', default=customer.phone)
            address = request.POST.get('address', default=customer.location)
            credit = request.POST.get('credit', default=customer.credit_info)
            password = request.POST.get('password', default=customer.password)
            if fullname is not "":
                customer.name = fullname
            if email is not "":
                customer.email = email
                request.user.username = email
            if phone is not "":
                customer.phone = phone
            if address is not "":
                customer.location = address
            if credit is not "":
                customer.credit_info = credit
            if password is not "":
                customer.password = password
                request.user.password = password
            customer.save()
            request.user.save()
            context = {'customer': customer, 'booking': booking}
            return render(request, 'profile.html', context)
        else:
            context = {'customer': customer, 'booking': booking}
            return render(request, 'profile.html', context)
    else:
        return redirect(login)
