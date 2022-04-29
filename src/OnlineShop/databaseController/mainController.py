import psycopg2 as pg2
import customerController

def main(): # temporary solution
    conn = pg2.connect(database="postgres", user="postgres", password="admin", host="localhost", port="5432")
    cur = conn.cursor()
    a = 5
    # cur.execute("SELECT * FROM Customers WHERE id = %s;", [a])

    # Get
    #cur.execute("""SELECT SUM(orderitems_prices.price), Products.category
    #                FROM OrderItems_Prices
    #                LEFT JOIN Products
    #                ON products.id = orderitems_prices.productId
    #                GROUP BY products.category;""")
    #print(cur.fetchall())

    #print(customerController.getMinAndMaxJoiningYear(cur))
    minAndMaxYear = customerController.getMinAndMaxJoiningYear(cur)
    print(customerController.getNoOfCustomersPerMonth(cur))

if __name__ == '__main__':
    main()