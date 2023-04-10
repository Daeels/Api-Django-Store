from django.contrib import admin
from .models import Products, Clients
# Register your models here.
admin.site.register(Clients)
admin.site.register(Products)