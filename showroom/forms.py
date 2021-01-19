
from django.forms import ModelForm
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django import forms

from .models import *


class CustomerForm(ModelForm):
    file = forms.FileField()

    class Meta:
        model = Customer
        fields = ['profile_pic']

        # exclude = ['user', 'name','email','password','']
