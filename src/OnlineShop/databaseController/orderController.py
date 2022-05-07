class orderController:
    def __init__(self, cur):
        self.cur = cur

    def getAllOrders(self):
        self.cur.execute("SELECT * FROM orders")
        return self.cur.fetchall()