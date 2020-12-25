from django.db import models
from django.core.validators import MinLengthValidator, MinValueValidator
from django.contrib.auth.models import User
from django.utils import timezone
from polymorphic.models import PolymorphicModel
from math import ceil


class Customer(models.Model):
    """A class to generate a customer
    ...

    Attributes
    ----------
    name: models.charfield / str
        name of the customer
    address: Location
        location of a customer
    phone: int
        phone number of a customer
    email: models.EmailField
        email of a customer
    password: model
    """
    user = models.OneToOneField(
        User, null=True, blank=True, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    email = models.EmailField(unique=True)
    password = models.CharField(max_length=50,
                                validators=[MinLengthValidator(8)])
    phone = models.CharField(max_length=15,
                             validators=[MinLengthValidator(8)], blank=True, null=True)
    credit_info = models.CharField(max_length=12,
                                   validators=[MinLengthValidator(12)], blank=True, null=True)
    location = models.CharField(max_length=255, blank=True, null=True)
    profile_pic = models.ImageField(null=True, upload_to="static/img/user_dp")

    bookings = models.ManyToManyField('Booking', blank=True)
    product = models.ManyToManyField('Products', blank=True)
    messages = models.ManyToManyField('UserMessage', blank=True)
    is_logged_in = models.BooleanField('isLoggedIn',blank=False, default=False)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

    def __str__(self):
        return self.name


class Products(PolymorphicModel):
    """A class to generate a product
    ...

    Attributes
    ----------
    name: models.charfield / str
        name of the product
    brand: models.CharField()
        Brand
    image_url: models.CharField / href
        link to image for showing the car
    """
    name = models.CharField(max_length=255)
    price = models.FloatField(default=0, validators=[
                              MinValueValidator(0)], blank=True)
    manufacturers = models.ForeignKey(
        'Manufacturer', on_delete=models.SET_NULL, null=True, blank=True)
    quantity = models.PositiveIntegerField(default=0)
    year = models.CharField(max_length=4, validators=[
                            MinLengthValidator(4)])
    description = models.TextField(blank=True)
    image_url1 = models.CharField(max_length=2083, default='', blank=True)
    image_url2 = models.CharField(max_length=2083, default='', blank=True)
    image_url3 = models.CharField(max_length=2083, default='', blank=True)
    image_url4 = models.CharField(max_length=2083, default='', blank=True)
    image_url5 = models.CharField(max_length=2083, default='', blank=True)

    customers = models.ManyToManyField('Customer', blank=True)
    bookings = models.ManyToManyField('Booking', blank=True)

    def __str__(self):
        return self.name

    def to_int(self):
        return ceil(self.price)


class Booking(models.Model):
    customers = models.ForeignKey(
        'Customer', on_delete=models.SET_NULL, null=True)
    product = models.ForeignKey(
        'Products', on_delete=models.SET_NULL, null=True)
    quantity = models.PositiveIntegerField(default=0)
    price = models.FloatField(default=0)
    date = models.DateTimeField(default=timezone.now)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

    def __str__(self):
        return f'Product:{str(self.product)}\tCustomer: {str(self.customers)}'
        


class Manufacturer(models.Model):
    """A class to generate a brand
    ...

    Attributes
    ----------
    name: models.charfield / str
        name of the brand
    location:
        location of the brand
    """
    name = models.CharField(max_length=255)
    location = models.CharField(max_length=255, blank=True, null=True)
    product = models.ManyToManyField('Products', blank=True)

    def __str__(self):
        return self.name


class Car(Products):
    """A class to generate a car
    ...

    Attributes
    ----------
    mileage: models.IntegerField()
        total mileage
    year: models.CharField()
        manufacture year of the car
    model: models.CharField()
        model of the car
    """
    mileage = models.FloatField(default=0, validators=[
                                MinValueValidator(0)], blank=True)

    def typeOf(self):
        return 'Car'


class Accesories(Products):
    def typeOf(self):
        return 'Accessory'


class UserMessage(models.Model):
    customers = models.ForeignKey(
        'Customer', on_delete=models.SET_NULL, null=True)
    product_name = models.TextField(default='---',null=True)
    product_year = models.TextField(default='---',null=True)
    product_manufacturers = models.TextField(default='---',null=True)
    query = models.TextField(default=' ',null=True)
    reply = models.TextField(default=' ',null=True)
    date = models.DateTimeField(default=timezone.now)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
