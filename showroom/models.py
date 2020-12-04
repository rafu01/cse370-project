from django.db import models

# Create your models here.


class Brand:
    # Need to do
    ...


class Products(models.Model):
    """A class to generate a product

    ...

    Attributes
    ----------
    product_id: models.IntegerField / int
        unique key
    name: models.charfield / str
        name of the product
    brand: Brand
        Brand
    image_url: models.CharField / href
        link to image for showing the car
    """
    product_id = models.IntegerField()
    name = models.CharField(max_length=255)
    brand = Brand()
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
    engine_no: models.IntegerField()
        unique key
    mileage

    """
    mileage = models.IntegerField()
    year = models.CharField(max_length=4)
    model = models.CharField(max_length=50)
    engine_no = models.IntegerField()


class Accesories(Products):
    model = models.CharField(max_length=50)
