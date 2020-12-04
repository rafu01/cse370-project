from django.contrib import admin
from .models import *


admin.site.site_header = 'Adminstration'

admin.site.register(Manufacturer)
admin.site.register(Car)
admin.site.register(Accesories)
admin.site.register(Customer)
