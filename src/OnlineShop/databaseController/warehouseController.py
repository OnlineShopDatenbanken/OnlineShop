import json

import psycopg2 as pg2
from django.db import models
import numpy as np

class warehouseController:
    def __init__(self, cur):
        self.cur = cur

    def getAllWarehouses(self):
        self.cur.execute("""SELECT warehouses.id, addresses.postcalCode, totalNoOfEmployees FROM warehouses JOIN addresses ON warehouses.addressId = Addresses.id""")
        return self.convertToDictionary(self.cur.fetchall())

    def getWarehouseProducts(self):
        self.cur.execute("""SELECT * FROM warehouseItems JOIN products ON warehouseItems.productId = products.id""")
        return self.convertToDictionary(self.cur.fetchall())

    def convertToDictionary(self, res):
        columns = [col[0] for col in self.cur.description]
        return [
            dict(zip(columns, row))
            for row in res
        ]