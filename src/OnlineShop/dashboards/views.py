from django.shortcuts import render
from ..databaseController import mainController as mainContr

contr = mainContr.mainController()

def home(request):
    return render(request, 'index.html')

def customers(request):

    noOfCustomersPerMonthTuples = contr.customerContr.getNoOfCustomersPerMonth()

    months = []
    for i in range(len(noOfCustomersPerMonthTuples)):
        months.append(str(int(noOfCustomersPerMonthTuples[i][1])) + '/' + str(int(noOfCustomersPerMonthTuples[i][2])))

    dict = {
        'noOfCustomersPerMonth': [i[0]for i in noOfCustomersPerMonthTuples],
        'months': months
    }

    return render(request, 'customers.html', context=dict)
