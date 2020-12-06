from django.contrib import admin
from .models import *

admin.site.register(Accesories)
admin.site.register(Customer)

class CarAdmin(admin.ModelAdmin):
    list_display = ('name','brand','model')

    fields = (
        'name',
        'brand',
        'mileage',
        'year',
        'model'
    )
    #list_editable
    #list_per_page
    #search_fields
    #list_filter
admin.site.register(Car,CarAdmin)


class ManufacturerAdmin(admin.ModelAdmin):
    list_display = ('name','location')
    fields = (
        'name',
        'location'
    )
admin.site.register(Manufacturer,ManufacturerAdmin)