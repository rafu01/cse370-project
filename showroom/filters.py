import django_filters
from .models import *
from django_filters import CharFilter, NumberFilter


class CarFilter(django_filters.FilterSet):
    name = CharFilter(field_name='name', lookup_expr='icontains')
    max_price = NumberFilter(field_name='price', lookup_expr='lt')
    min_price = NumberFilter(field_name='price', lookup_expr='gt')

    class Meta:
        model = Car
        fields = ('name', 'min_price', 'max_price', 'year',
                  'mileage', 'manufacturers')


class AccessoriesFilter(django_filters.FilterSet):
    name = CharFilter(field_name='name', lookup_expr='icontains')
    max_price = NumberFilter(field_name='price', lookup_expr='lt')
    min_price = NumberFilter(field_name='price', lookup_expr='gt')

    class Meta:
        model = Accesories
        fields = ('name', 'year', 'min_price', 'max_price', 'manufacturers')
