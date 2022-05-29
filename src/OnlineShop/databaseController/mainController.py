import psycopg2 as pg2
from . import customerController, productController, orderController, warehouseController


class mainController:
    def __init__(self):
        self.conn = pg2.connect(database="postgres", user="postgres", password="admin", host="localhost", port="5432")
        self.cur = self.conn.cursor()
        self.customerContr = customerController.customerController(self.cur)
        self.productContr = productController.productController(self.cur)
        self.orderContr = orderController.orderController(self.cur)
        self.warehouseContr = warehouseController.warehouseController(self.cur)
