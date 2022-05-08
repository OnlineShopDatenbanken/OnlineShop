import json

import psycopg2 as pg2
from django.db import models
import numpy as np

class orderController:
    def __init__(self, cur):
        self.cur = cur

    def getAllOrders(self):
        self.cur.execute("SELECT * FROM orders")
        return self.convertToDictionary(self.cur.fetchall())