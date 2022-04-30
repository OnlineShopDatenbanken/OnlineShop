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

    months = []
    for i in range(len(noOfCustomersPerMonthTuples)):
        months.append(str(int(noOfCustomersPerMonthTuples[i][1])) + '/' + str(int(noOfCustomersPerMonthTuples[i][2])))

    dict = {
        'graphData': {
            'noOfCustomersPerMonth': [i[0]for i in noOfCustomersPerMonthTuples],
            'noOfNewCustomersPerMonth': [i[0]for i in noOfNewCustomersPerMonthTuples],
            'months': months
        },
        'percentageOfCustomersWithMinOrder': percentageOfCustomersWithMinOneOrder,
        'percentageOfCustomersWithNoOrder': percentageOfCustomersWithNoOrder,
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