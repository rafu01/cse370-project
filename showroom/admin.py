from django.contrib import admin
from .models import *

admin.site.register(Accesories)
admin.site.register(Customer)


class CarAdmin(admin.ModelAdmin):
    list_display = ('name', 'year', 'price')

    fields = (
        'name',
        'price',
        'quantity',
        'year',
        'mileage',
        'description',
        'img1',
        'img2',
        'img3',
        'img4',
        'img5',
    )


    # list_editable
    # list_per_page
    # search_fields
    # list_filter
admin.site.register(Car, CarAdmin)


class ManufacturerAdmin(admin.ModelAdmin):
    list_display = ('name', 'location')
    fields = (
        'name',
        'location'
    )


admin.site.register(Manufacturer, ManufacturerAdmin)
