from django.db import models
from django.core.validators import MinLengthValidator
from polymorphic.models import PolymorphicModel


class Location(models.Model):
    street = models.CharField(max_length=50)
    city = models.CharField(max_length=20)
    country = models.CharField(max_length=20)


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
    location = models.ManyToManyField(Location)


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
    brand = models.CharField(max_length=255)
    image_url = models.CharField(max_length=2083)


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
    mileage = models.PositiveBigIntegerField()
    year = models.CharField(max_length=4,
                            validators=[MinLengthValidator(4)])
    model = models.CharField(max_length=255)


class Accesories(Products):
    model = models.CharField(max_length=255)


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
    name = models.CharField(max_length=255)
    email = models.EmailField(unique=True)
    password = models.CharField(max_length=50,
                                validators=[MinLengthValidator(8)])
    phone = models.CharField(max_length=15,
                             validators=[MinLengthValidator(8)])
    location = models.ManyToManyField(Location)
    
