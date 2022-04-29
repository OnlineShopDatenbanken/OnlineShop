from django.shortcuts import render

def home(request):
    return render(request, 'index.html')

def customers(request):
    return render(request, 'customers.html')
