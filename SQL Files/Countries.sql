DROP TABLE IF EXISTS Countries CASCADE;

CREATE TABLE IF NOT EXISTS Countries (
    code VARCHAR PRIMARY KEY,
    name VARCHAR,
    continentName VARCHAR,
    shippingPossible bool
);

INSERT INTO Countries VALUES
('DE', 'Germany', 'Europe', TRUE);