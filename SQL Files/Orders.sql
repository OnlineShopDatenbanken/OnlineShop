DROP TABLE IF EXISTS Orders CASCADE;
DROP TABLE IF EXISTS OrderItems CASCADE;

CREATE TABLE IF NOT EXISTS Orders (
    id SERIAL PRIMARY KEY,
    customerId INTEGER NULL,
    totalPrice DECIMAL(12, 2) NOT NULL,
    shippingAdressId INTEGER NOT NULL,
    billingAdressId INTEGER NOT NULL,
    arrivalDate DATE NULL,
    expectedArrivalDate DATE NULL,

    FOREIGN KEY(customerId) REFERENCES Customers(id),
    FOREIGN KEY(shippingAdressId) REFERENCES Addresses(id),
    FOREIGN KEY(billingAdressId) REFERENCES Addresses(id)
);

CREATE TABLE IF NOT EXISTS OrderItems (
    orderId INTEGER,
    productId INTEGER,
    quantity INTEGER,
    FOREIGN KEY(orderId) REFERENCES Orders(id),
    FOREIGN KEY(productId) REFERENCES Products(id),
    PRIMARY KEY(orderId, productId)
);