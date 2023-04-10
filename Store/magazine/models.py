from django.db import models

# Create your models here.

class Products(models.Model):
    name = models.CharField(max_length=50)
    category = models.CharField(max_length=50)
    rate = models.IntegerField()
    owner = models.ForeignKey(
        'auth.User',
        related_name='Products',
        on_delete=models.CASCADE,
        null=True
    )
    def  __str__(self):
        return self.name
    
class Clients(models.Model):
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    age = models.IntegerField()
    #Many to many relationship
    Products = models.ManyToManyField(Products)
    owner = models.ForeignKey(
        'auth.User',
        related_name='Clients',
        on_delete=models.CASCADE,
        null=True
    )
    
    def __str__(self):
        return self.first_name
