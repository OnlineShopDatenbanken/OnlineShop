import psycopg2 as pg2
from django.db import models

class productController:
    def __init__(self, cur):
        self.cur = cur

    def getRevenuePerCategory(self):
        self.cur.execute("""SELECT Products.category, SUM(orderitems_prices.price)
                            FROM OrderItems_Prices
                            LEFT JOIN Products
                            ON products.id = orderitems_prices.productId
                            GROUP BY products.category;""")
        return self.cur.fetchall()