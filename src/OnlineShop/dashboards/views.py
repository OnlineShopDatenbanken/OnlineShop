from django.shortcuts import render
from ..databaseController import mainController as mainContr
from decimal import *

contr = mainContr.mainController()

def home(request):
    return render(request, 'index.html')

def customers(request):
    noOfCustomersPerMonthTuples = contr.customerContr.getNoOfCustomersPerMonth()
    noOfNewCustomersPerMonthTuples = contr.customerContr.getNoOfNewCustomersPerMonth()
    percentageOfCustomersWithMinOneOrder = contr.customerContr.getPercentageOfCustomersWithMinOneOrder()
    percentageOfCustomersWithNoOrder = (1 - (percentageOfCustomersWithMinOneOrder/100))*100
    topFiveCustomers = contr.customerContr.getTopFiveCustomers()
    numOfCustomersPerCountry = contr.customerContr.getNumOfCustomersPerCountry()

    months = []
    for i in range(len(noOfCustomersPerMonthTuples)):
        months.append(str(int(noOfCustomersPerMonthTuples[i][1])) + '/' + str(int(noOfCustomersPerMonthTuples[i][2])))

    noOfCustomersPar = []

    if (request.GET.get("submitBtn")):
        noOfCustomersPar = contr.customerContr.getNoOfNewCustomersPar(request.GET.get("minAge"), request.GET.get("maxAge"))

    dict = {
        'graphData': {
            'noOfCustomersPerMonth': [i[0]for i in noOfCustomersPerMonthTuples],
            'noOfNewCustomersPerMonth': [i[0]for i in noOfNewCustomersPerMonthTuples],
            'months': months
        },
        'noOfCustomersPar': noOfCustomersPar,
        'percentageOfCustomersWithMinOrder': percentageOfCustomersWithMinOneOrder,
        'percentageOfCustomersWithNoOrder': percentageOfCustomersWithNoOrder,
        'topFiveCustomers': topFiveCustomers,
        'numOfCustomersPerCountry': numOfCustomersPerCountry
        #'numOfCustomersPerCountry': {
        #    'countries': [i[0]for i in numOfCustomersPerCountry],
        #    'noOfCustomers': [i[1]for i in numOfCustomersPerCountry]
        #}
    }

    return render(request, 'customers.html', context=dict)

def products(request):
    revenuePerCategory = contr.productContr.getRevenuePerCategory()
    revenues = [float(i[1]) for i in revenuePerCategory]
    totalRevenue = sum(revenues)
    categories = [i[0]for i in revenuePerCategory]

    dict = {
        'graphData': {
            'productCategories': categories,
            'revenues': revenues,
            'totalRevenue': totalRevenue
        }
    }

    return render(request, 'products.html', context=dict)

def orders(request):
    allOrders = contr.orderContr.getAllOrders()

    dict = {
        'allOrders': allOrders
    }
    return render(request, 'orders.html', context=dict)