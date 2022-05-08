import psycopg2 as pg2
from . import customerController, productController, orderController


class mainController:
    def __init__(self):
        self.conn = pg2.connect(database="postgres", user="postgres", password="admin", host="localhost", port="5432")
        self.cur = self.conn.cursor()
        self.customerContr = customerController.customerController(self.cur)
        self.productContr = productController.productController(self.cur)
        self.orderController = orderController.orderController(self.cur)

#def main(): # temporary solution
#    conn = pg2.connect(database="postgres", user="postgres", password="admin", host="localhost", port="5432")
#    cur = conn.cursor()

    # cur.execute("SELECT * FROM Customers WHERE id = %s;", [a])

    # Get
    #cur.execute("""SELECT SUM(orderitems_prices.price), Products.category
    #                FROM OrderItems_Prices
    #                LEFT JOIN Products
    #                ON products.id = orderitems_prices.productId
    #                GROUP BY products.category;""")
    #print(cur.fetchall())

    #print(customerController.getMinAndMaxJoiningYear(cur))

#if __name__ == '__main__':
#    main()