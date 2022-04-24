DROP TABLE IF EXISTS Products CASCADE;
DROP TABLE IF EXISTS CustomerReviews CASCADE;

CREATE TABLE IF NOT EXISTS Products (
    id SERIAL PRIMARY KEY,
    title TEXT NULL,
    category TEXT NULL,
    description TEXT NULL,
    price DECIMAL(12,2) NULL
);

CREATE TABLE IF NOT EXISTS CustomerReviews (
    productId INTEGER NOT NULL,
    customerId INTEGER NOT NULL,
    amountOfStarsGiven INTEGER,
    FOREIGN KEY (productId) REFERENCES Products(id),
    FOREIGN KEY (customerId) REFERENCES Customers(id),
    PRIMARY KEY (productId, customerId)
);

INSERT INTO Products(title, category, description, price) VALUES
('Guitar', 'Musical instruments', '', 500.00),
('Piano', 'Musical instruments', '', 2000.00),
('Recorder', 'Musical instruments', '', 30.00),
('Samsong Phone', 'Electronics', '', 900.00),
('UPhone', 'Electronics', '', 901.00),
('Parasonics TV', 'Electronics', '', 600.00);