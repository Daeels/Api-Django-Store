from django.shortcuts import render
from rest_framework import generics,mixins
from .models import Products, Clients
from .serializer import ProductsSerializer, ClientsSerializer
from rest_framework.response import Response
from django.contrib.auth import get_user_model
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated

# Create your views here.
User = get_user_model()

class ClientsGenericApi(generics.GenericAPIView, 
                      mixins.ListModelMixin, 
                      mixins.RetrieveModelMixin, 
                      mixins.CreateModelMixin, 
                      mixins.UpdateModelMixin, 
                      mixins.DestroyModelMixin):
    serializer_class = ClientsSerializer
    queryset=Clients.objects.all()
    lookup_field ='id'

#-------------------------------------------------------------------------------------#
# ----------------TOKEN----------------------  
#-------------------------------------------------------------------------------------#

    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
    
#-------------------------------------------------------------------------------------#
# ----------------LES METHODES CRUD----------------------  
#-------------------------------------------------------------------------------------#
    def get(self,request,id=None):
         if id:
             return self.retrieve(request)
         else:
             return self.list(request)
#-------------------------------------------------------------------------------------#
    def post(self,request):
          owner = request.data["owner"]
          superuser = User.objects.filter(is_superuser=True,username=owner).first()
          data = request.data
          Client = Clients.objects.create(first_name=data["first_name"], 
                                          last_name = data["last_name"], 
                                          email = data["email"], 
                                          age = data["age"],
                                          owner=superuser)
          Client.save()
          
          for product in data["Products"]:
              product_obj = Products.objects.get(name=product["name"])
              Client.Products.add(product_obj)
              
          serializer = ClientsSerializer(Client)
          return Response(serializer.data)
#-------------------------------------------------------------------------------------#
    def put(self,request,id):
        return self.update(request,id)
#-------------------------------------------------------------------------------------#
    def delete(self,request,id):
        return self.destroy(request,id)


class ProductsGenericApi(generics.GenericAPIView, 
                      mixins.ListModelMixin, 
                      mixins.RetrieveModelMixin, 
                      mixins.CreateModelMixin, 
                      mixins.UpdateModelMixin, 
                      mixins.DestroyModelMixin):
    serializer_class = ProductsSerializer
    queryset=Products.objects.all()
    lookup_field ='id'

#-------------------------------------------------------------------------------------#
    def get(self,request,id=None):
         if id:
             return self.retrieve(request)
         else:
             return self.list(request)
#-------------------------------------------------------------------------------------#
    def post(self,request):
        owner = request.data["owner"]
        superuser = User.objects.filter(is_superuser=True,username=owner).first()
        data = request.data
        new_products =Products.objects.create(name = data["name"],
                                              category = data["category"],
                                              rate = data["rate"],
                                              owner = superuser)
        new_products.save()
        serializer = ProductsSerializer(new_products)
        return Response(serializer.data)
#-------------------------------------------------------------------------------------#
    def put(self,request,id):
        return self.update(request,id)
#-------------------------------------------------------------------------------------#
    def delete(self,request,id):
        return self.destroy(request,id)



    