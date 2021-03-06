from django.contrib import admin
from .models import *
from django.forms import CheckboxSelectMultiple
import csv
from django.http import HttpResponse
from django.db.models import F


def export_to_CSV_Customers(modeladmin, request, queryset):
    response = HttpResponse(content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename="Customer Details.csv"'
    writer = csv.writer(response)
    writer.writerow(['Name', 'Email Address', 'GearUp Account Password',
                     'Phone Number', 'Credit Info', 'Location'])
    customerDetails = queryset.values_list(
        'name', 'email', 'password', 'phone', 'credit_info', 'location')
    for customer in customerDetails:
        writer.writerow(customer)
    return response


export_to_CSV_Customers.short_description = 'Export to CSV'


def export_to_CSV_Manufacturers(modeladmin, request, queryset):
    response = HttpResponse(content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename="Manufacturer Details.csv"'
    writer = csv.writer(response)
    writer.writerow(['Name', 'Location'])
    manufacturerDetails = queryset.values_list('name', 'location')
    for manufacturer in manufacturerDetails:
        writer.writerow(manufacturer)
    return response


export_to_CSV_Manufacturers.short_description = 'Export to CSV'


def export_to_CSV_Cars(modeladmin, request, queryset):
    response = HttpResponse(content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename="Car Details.csv"'
    writer = csv.writer(response)
    writer.writerow(['Name of the Car', 'Price(BDT)',
                     'Manufacturer', 'Year', 'Mileage'])
    carDetails = queryset.values_list(
        'name', 'price', 'manufacturers', 'year', 'mileage')
    for cars in carDetails:
        writer.writerow(cars)
    return response


export_to_CSV_Cars.short_description = 'Export to CSV'


def export_to_CSV_Accessories(modeladmin, request, queryset):
    response = HttpResponse(content_type='text/csv')
    response['Content-Disposition'] = 'attachment; filename="Accessories Details.csv"'
    writer = csv.writer(response)
    writer.writerow(
        ['Name of the Accessory', 'Price(BDT)', 'Manufacturer', 'Year'])
    accesories_details = queryset.values_list(
        'name', 'price', 'manufacturers', 'year')
    for acc in accesories_details:
        writer.writerow(acc)
    return response


export_to_CSV_Accessories.short_description = 'Export to CSV'


# -----------------------------------------------------------------------------------------


def apply_discount_on_cars(modeladmin, request, queryset):
    for Car in queryset:
        Car.price = Car.price * float('0.9')
        Car.save()


apply_discount_on_cars.short_description = 'Apply 10%% discount on selected cars'


def apply_discount_on_accessories(modeladmin, request, queryset):
    for Accesories in queryset:
        Accesories.price = Accesories.price * float('0.9')
        Accesories.save()


apply_discount_on_accessories.short_description = 'Apply 10%% discount on selected accessories'


def cancel_discount_on_cars(modeladmin, request, queryset):
    for Car in queryset:
        Car.price = Car.price / float('0.9')
        Car.save()


cancel_discount_on_cars.short_description = 'Cancel 10%% discount on selected cars'


def cancel_discount_on_accessories(modeladmin, request, queryset):
    for Accesories in queryset:
        Accesories.price = Accesories.price / float('0.9')
        Accesories.save()


cancel_discount_on_accessories.short_description = 'Cancel 10%% discount on selected accessories'


# -----------------------------------------------------------------------------------------


class AccessoriesAdmin(admin.ModelAdmin):
    list_display = ('name', 'year', 'manufacturers', 'price', 'quantity')
    fieldsets = (
        ("Accessories Details", {
            "fields": (
                ('name', 'manufacturers'),
                ('year', 'price'),
                'description',
            )
        }),
        ("Photos", {
            "fields": (
                'image_url1',
                'image_url2',
                'image_url3',
                'image_url4',
                'image_url5',
            )
        }),
        ("Stock", {
            "fields": (
                'quantity',
            )
        }),
        ("Others", {
            "fields": (
                ('bookings', 'customers',),
            )
        })
    )
    ordering = ['quantity']
    list_per_page = 10
    search_fields = ('name', 'year', 'price', 'manufacturers__name',)
    list_editable = ('price',)
    actions = [apply_discount_on_accessories,
               cancel_discount_on_accessories, export_to_CSV_Accessories]
    formfield_overrides = {
        models.ManyToManyField: {'widget': CheckboxSelectMultiple},
    }


admin.site.register(Accesories, AccessoriesAdmin)


class CarAdmin(admin.ModelAdmin):
    fieldsets = (
        ("Car Details", {
            "fields": (
                ('name', 'manufacturers'),
                ('mileage', 'price'),
                'year',
                'description',
            )
        }),
        ("Photos", {
            "fields": (
                'image_url1',
                'image_url2',
                'image_url3',
                'image_url4',
                'image_url5',
            )
        }),
        ("Stock", {
            "fields": (
                'quantity',
            )
        }),
        ("Others", {
            "fields": (
                ('bookings', 'customers',),
            )
        })
    )
    list_display = ('name', 'year', 'manufacturers', 'price', 'quantity')
    ordering = ['quantity']
    list_per_page = 10
    search_fields = ('year', 'price', 'name', 'manufacturers__name',)
    list_editable = ('price',)
    actions = [apply_discount_on_cars,
               cancel_discount_on_cars, export_to_CSV_Cars]
    formfield_overrides = {
        models.ManyToManyField: {'widget': CheckboxSelectMultiple},
    }


admin.site.register(Car, CarAdmin)


class ManufacturerAdmin(admin.ModelAdmin):
    list_display = ('name', 'location')
    fields = (
        'name',
        'location',
        'product'
    )
    list_per_page = 10
    search_fields = ('name', 'location',)
    actions = [export_to_CSV_Manufacturers]
    formfield_overrides = {
        models.ManyToManyField: {'widget': CheckboxSelectMultiple},
    }


admin.site.register(Manufacturer, ManufacturerAdmin)


class CustomerAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'phone', 'location')

    fieldsets = (
        ("Personal Details", {
            "fields": (
                ('name', 'phone',),
                'location',
                'profile_pic',
            )
        }),
        ("GearUp Credentials", {
            "fields": (
                ('email', 'password',),
            )
        }),
        ("Payment Details", {
            "fields": (
                'credit_info',
            )
        }),
        ("Is Logged-in", {
            "fields": (
                'is_logged_in',
            )
        }),
        ("Others", {
            "fields": (
                ('bookings', 'product',),
                'messages',
            )
        }),
    )
    list_per_page = 10
    search_fields = ('name', 'phone', 'email',)
    actions = [export_to_CSV_Customers, ]
    formfield_overrides = {
        models.ManyToManyField: {'widget': CheckboxSelectMultiple},
    }


admin.site.register(Customer, CustomerAdmin)


class BookingAdmin(admin.ModelAdmin):
    readonly_files = ('date',)
    list_display = ('customers', 'product', 'quantity', 'price', 'date')

    fields = (
        'customers',
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
    list_display = ('customers', 'query', 'date',
                    'product_name', 'product_manufacturers')
    fields = (
        'customers',
        ('query', 'reply',),
        ('product_name', 'product_manufacturers'),
        'date'
    )
    list_per_page = 10
    ordering = ['customers', 'date', 'product_name', 'product_manufacturers']


admin.site.register(UserMessage, UserMessageAdmin)
