from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('home', views.home, name='home'),
    path('customers', views.customers, name='customers'),
    path('products', views.products, name='products'),
    path('orders', views.orders, name='orders'),
    path('warehouses', views.warehouses, name='warehouses')
]