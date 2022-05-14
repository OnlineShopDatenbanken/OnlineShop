import json

import psycopg2 as pg2
from django.db import models
import numpy as np

class orderController:
    def __init__(self, cur):
        self.cur = cur

    def getAllOrders(self):
        self.cur.execute("""SELECT orders_complete.id, totalprice, firstname, lastname FROM orders_complete JOIN customers ON orders_complete.customerId = customers.id""")

        res = self.convertToDictionary(self.cur.fetchall())
        for dicts in res:
            dicts['totalprice'] = round(float(dicts['totalprice']), 2)
        return res

    def convertToDictionary(self, res):
        columns = [col[0] for col in self.cur.description]
        return [
            dict(zip(columns, row))
            for row in res
        ]