from django.shortcuts import render
from ..databaseController import mainController as mainContr
from decimal import Decimal

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

    # monthsRaw = []
    # for i in range(len(noOfCustomersPerMonthTuples)):
    #     monthsRaw.append(tuple[noOfCustomersPerMonthTuples[i][1], noOfCustomersPerMonthTuples[i][2]])

    if (request.GET.get("submitBtn")):
        minAge = request.GET.get("minAge")
        maxAge = request.GET.get("maxAge")
        if ((int(maxAge) > 0) & (int(minAge) >= 0) & (int(maxAge) > int(minAge))):
            noOfNewCustomersPerMonthTuples = contr.customerContr.getNoOfNewCustomersPerMonthParam(minAge, maxAge)
            noOfCustomersPerMonthTuples = contr.customerContr.getNoOfCustomersPerMonthParam(minAge, maxAge)
            months = []
            for i in range(len(noOfCustomersPerMonthTuples)):
                months.append(str(int(noOfCustomersPerMonthTuples[i][1])) + '/' + str(int(noOfCustomersPerMonthTuples[i][2])))

    dict = {
        'graphData': {
            'noOfCustomersPerMonth': [i[0]for i in noOfCustomersPerMonthTuples],
            'noOfNewCustomersPerMonth': [i[0]for i in noOfNewCustomersPerMonthTuples],
            'months': months
        },
        'percentageOfCustomersWithMinOrder': round(percentageOfCustomersWithMinOneOrder, 2),
        'percentageOfCustomersWithNoOrder': round(percentageOfCustomersWithNoOrder, 2),
        'topFiveCustomers': topFiveCustomers,
        'numOfCustomersPerCountry': numOfCustomersPerCountry
    }

    return render(request, 'customers.html', context=dict)

def products(request):
    revenuePerCategory = contr.productContr.getRevenuePerCategory()
    revenues = [float(i[1]) for i in revenuePerCategory]
    totalRevenue = sum(revenues)
    categories = [i[0]for i in revenuePerCategory]
    avgProductRating = contr.productContr.getAverageProductRating()

    dict = {
        'graphData': {
            'productCategories': categories,
            'revenues': revenues,
            'totalRevenue': totalRevenue
        },
        'avgProductRating': avgProductRating
    }

    return render(request, 'products.html', context=dict)

def orders(request):
    allOrders = contr.orderContr.getAllOrders()
    orderProducts = contr.orderContr.getOrderProducts()

    dict = {
        'allOrders': allOrders,
        'orderProducts': orderProducts
    }
    return render(request, 'orders.html', context=dict)

def warehouses(request):
    allWarehouses = contr.warehouseContr.getAllWarehouses()
    warehouseProducts = contr.warehouseContr.getWarehouseProducts()

    dict = {
        'allWarehouses': allWarehouses,
        'warehouseProducts': warehouseProducts
    }
    return render(request, 'warehouses.html', context=dict)