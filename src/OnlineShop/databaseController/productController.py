import psycopg2 as pg2
from django.db import models
from decimal import Decimal

class productController:
    def __init__(self, cur):
        self.cur = cur

    def getRevenuePerCategory(self):
        self.cur.execute("""SELECT Products.category, SUM(orderitems_prices.price)
                            FROM orderitems_prices
                            LEFT JOIN Products
                            ON products.id = orderitems_prices.productId
                            GROUP BY products.category;""")
        return self.cur.fetchall()

    def getAverageProductRating(self):
        self.cur.execute("""SELECT Products.title, CAST(AVG(amountofstarsgiven) AS DECIMAL(12,2))
                            FROM customerreviews
                            LEFT JOIN products
                            ON products.id = customerreviews.productid
                            GROUP BY products.title
                            ;""")

        res =  self.convertToDictionary(self.cur.fetchall())
        for dicts in res:
            dicts['avg'] = round(float(dicts['avg']), 2)
        return res

    def convertToDictionary(self, res):
        columns = [col[0] for col in self.cur.description]
        return [
            dict(zip(columns, row))
            for row in res
        ]