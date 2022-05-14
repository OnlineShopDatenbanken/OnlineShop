import json

import psycopg2 as pg2
from django.db import models
import numpy as np

class orderController:
    def __init__(self, cur):
        self.cur = cur

    def getAllOrders(self):
        self.cur.execute("""SELECT * FROM orders, customers
                            WHERE orders.customerId = customers.id;""")
        return self.convertToDictionary(self.cur.fetchall())

    def convertToDictionary(self, res):
        columns = [col[0] for col in self.cur.description]
        return [
            dict(zip(columns, row))
            for row in res
        ]