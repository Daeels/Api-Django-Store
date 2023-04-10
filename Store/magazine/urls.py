from django.urls import path
from django.conf.urls import url,include
from .views import ClientsGenericApi, ProductsGenericApi



urlpatterns = [
    path('Clients/',ClientsGenericApi.as_view()),
    path('Clients/<int:id>/',ClientsGenericApi.as_view()),
    path('Products/',ProductsGenericApi.as_view()),
    path('Products/<int:id>/',ProductsGenericApi.as_view()),
    
]