import psycopg2 as pg2
from django.db import models

class customerController:
    def __init__(self, cur):
        self.cur = cur

# the year in which the first and the last customers joined --> needed for the x-axis of the plot
    def getMinAndMaxJoiningYear(self):
        self.cur.execute("""SELECT MIN(customerSince), MAX(customerSince) FROM Customers;""")
        bothDates = self.cur.fetchone()
        firstYear = bothDates[0].year
        lastYear = bothDates[1].year
        return [firstYear, lastYear]

# Get the total number of customers for each month where new customers are added
    def getNoOfCustomersPerMonth(self):
        # does not calculate the accumulated value
        valuesPerMonth = self.getNoOfNewCustomersPerMonth()

        # calculate the accumulated value for each month
        for i in range(len(valuesPerMonth)):
            if (i > 0):
                valuesPerMonth[i] = (valuesPerMonth[i][0]+valuesPerMonth[i-1][0], valuesPerMonth[i][1], valuesPerMonth[i][2])
        return valuesPerMonth

    def getNoOfNewCustomersPerMonth(self):
        self.cur.execute("""SELECT COUNT(*) as totalNoOfCustomers, date_part('month', customerSince) as month, date_part('year', customerSince) as year
                                FROM Customers
                                GROUP BY date_part('month', customerSince), date_part('year', customerSince)
                                ORDER BY date_part('year', customerSince), date_part('month', customerSince)""")
        return self.cur.fetchall()

    def getPercentageOfCustomersWithMinOneOrder(self):
        self.cur.execute("""SELECT Customers.id, Count(orders.id)
                            FROM customers
                            LEFT JOIN orders
                            ON Orders.customerId = customers.Id
                            GROUP BY Customers.id;""")
        res = self.cur.fetchall()
        numberOfCustomers = len(res)
        numberOfCustomersThatHaveOrderedSomething = len([i for i in res if i[1] != 0]) # remove zeroes

        return (numberOfCustomersThatHaveOrderedSomething/numberOfCustomers)*100