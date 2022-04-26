DROP TABLE IF EXISTS Warehouses CASCADE;
DROP TABLE IF EXISTS WarehouseItems CASCADE;

CREATE TABLE IF NOT EXISTS Warehouses (
    id SERIAL PRIMARY KEY,
    addressId INTEGER,
    totalNoOfEmployees INTEGER,
    FOREIGN KEY (addressId) REFERENCES Addresses(id)
);

CREATE TABLE IF NOT EXISTS WarehouseItems (
    warehouseId INTEGER NOT NULL,
    productId INTEGER NOT NULL,
    quantity INTEGER,

    FOREIGN KEY (warehouseId) REFERENCES Warehouses(id),
    FOREIGN KEY (productId) REFERENCES Products(id),
    PRIMARY KEY (warehouseId, productId)
);

INSERT INTO Warehouses(addressId, totalNoOfEmployees)  VALUES
(26, 10),
(50, 25),
(2, 5),
(5, 10);

INSERT INTO WarehouseItems VALUES
(4,3,1),
(1,5,134),
(2,3,92),
(3,4,40),
(2,11,32),
(3,11,26),
(1,11,117),
(4,9,8),
(4,10,76),
(4,6,16),
(1,3,127),
(3,2,5);