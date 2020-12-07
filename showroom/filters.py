import django_filters
from .models import *
from django_filters import CharFilter


class CarFilter(django_filters.FilterSet):
    name = CharFilter(field_name='name', lookup_expr='icontains')

    class Meta:
        model = Car
        fields = ('name', 'year', 'mileage')


class AccessoriesFilter(django_filters.FilterSet):
    name = CharFilter(field_name='name', lookup_expr='icontains')

    class Meta:
        model = Accesories
        fields = ('name', 'year')
