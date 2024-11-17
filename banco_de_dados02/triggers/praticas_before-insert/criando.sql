CREATE TABLE inventory(
    product_id INT PRIMARY KEY,
    quantity INT NOT NULL DEFAULT 0
);

CREATE TABLE inventory_stat(
    total_qty INT
);