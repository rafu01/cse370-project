from django.contrib import admin
from .models import *
from django.forms import CheckboxSelectMultiple


class AccessoriesAdmin(admin.ModelAdmin):
    list_display = ('name', 'year', 'price')

    fields = (
        'name',
        'price',
        'manufacturers',
        'quantity',
        'year',
        'description',
        'image_url1',
        'image_url2',
        'image_url3',
        'image_url4',
        'image_url5',
        'customers',
        'bookings'
    )

    formfield_overrides = {
        models.ManyToManyField: {'widget': CheckboxSelectMultiple},
    }

    # list_editable
    # list_per_page
    # search_fields
    # list_filter
admin.site.register(Accesories, AccessoriesAdmin)


class CarAdmin(admin.ModelAdmin):
    list_display = ('name', 'year', 'price')

    fields = (
        'name',
        'price',
        'manufacturers',
        'quantity',
        'year',
        'mileage',
        'description',
        'image_url1',
        'image_url2',
        'image_url3',
        'image_url4',
        'image_url5',
        'customers',
        'bookings'
    )

    formfield_overrides = {
        models.ManyToManyField: {'widget': CheckboxSelectMultiple},
    }

    # list_editable
    # list_per_page
    # search_fields
    # list_filter
admin.site.register(Car, CarAdmin)


class ManufacturerAdmin(admin.ModelAdmin):
    list_display = ('name', 'location')
    fields = (
        'name',
        'location',
        'product'
    )

    formfield_overrides = {
        models.ManyToManyField: {'widget': CheckboxSelectMultiple},
    }


admin.site.register(Manufacturer, ManufacturerAdmin)


class CustomerAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'phone', 'location')

    fields = (
        'user',
        'name',
        'email',
        'password',
        'phone',
        'credit_info',
        'location',
        'profile_pic',
        'bookings',
        'product',
        'messages'
    )

    formfield_overrides = {
        models.ManyToManyField: {'widget': CheckboxSelectMultiple},
    }


admin.site.register(Customer, CustomerAdmin)


class BookingAdmin(admin.ModelAdmin):
    readonly_files = ('date',)
    list_display = ('customer', 'product', 'quantity', 'date')

    fields = (
        'customer',
        'product',
        'quantity',
        'price',
        'date'
    )

    formfield_overrides = {
        models.ManyToManyField: {'widget': CheckboxSelectMultiple},
    }


admin.site.register(Booking, BookingAdmin)


class UserMessageAdmin(admin.ModelAdmin):
    list_display = ('date', 'customer')

    fields = (
        'customers',
        'query',
        'date'
    )


admin.site.register(UserMessage, UserMessageAdmin)
