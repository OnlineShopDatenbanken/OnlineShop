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