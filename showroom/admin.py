from django.contrib import admin
from .models import *
import inspect


# Register your models here.
admin.site.register(Manufacturer)
admin.site.register(Car)
admin.site.register(Accesories)
admin.site.register(Customer)
