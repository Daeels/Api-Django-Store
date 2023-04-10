from rest_framework import serializers
from .models import Products, Clients
from django.contrib.auth.models import User

class ProductsSerializer(serializers.ModelSerializer):
        class Meta :
                model = Products
                fields = '__all__'
        
class ClientsSerializer(serializers.ModelSerializer):
        class Meta :
                model = Clients
                fields = '__all__'