import json

import psycopg2 as pg2
from django.db import models
import numpy as np

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

    def getNoOfCustomersPerMonthParam(self, minAge, maxAge):
        # does not calculate the accumulated value
        valuesPerMonth = self.getNoOfNewCustomersPerMonthParam(minAge, maxAge)
        # calculate the accumulated value for each month
        for i in range(len(valuesPerMonth)):
            if (i > 0):
                valuesPerMonth[i] = (
                valuesPerMonth[i][0] + valuesPerMonth[i - 1][0], valuesPerMonth[i][1], valuesPerMonth[i][2])
        return valuesPerMonth

    def getNoOfNewCustomersPerMonthParam(self, minAge, maxAge):
        self.cur.execute("""SELECT COUNT(*) as totalNoOfCustomers, date_part('month', customerSince) as month, date_part('year', customerSince) as year
                                        FROM Customers
                                        WHERE customers.age >= %s
                                        AND customers.age <= %s
                                        GROUP BY date_part('month', customerSince), date_part('year', customerSince)
                                        ORDER BY date_part('year', customerSince), date_part('month', customerSince)""", (minAge, maxAge))
        return self.cur.fetchall()

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

    def getTopFiveCustomers(self):
        self.cur.execute("""SELECT Customers.id, customers.firstName, customers.lastName, Count(orders.id) as noOfOrders
                            FROM customers
                            LEFT JOIN orders
                            ON Orders.customerId = customers.Id
                            GROUP BY Customers.id
                            ORDER BY noOfOrders DESC;""")
        return self.convertToDictionary(self.cur.fetchmany(5))

    def getNumOfCustomersPerCountry(self):
        self.cur.execute("""SELECT addresses.countryCode as country, count(addresses.countryCode) as count
                             FROM addresses
                             RIGHT JOIN customers
                             ON customers.addressId = addresses.id
                             GROUP BY addresses.countryCode""")
        res = self.convertToDictionary(self.cur.fetchall())

        # convert count values to int (otherwise is string)
        for dicts in res:
            dicts['count'] = int(dicts['count'])

        return res

    def convertToDictionary(self, res):
        columns = [col[0] for col in self.cur.description]
        return [
            dict(zip(columns, row))
            for row in res
        ]