CREATE TABLE products (
  product_id   VARCHAR(20)    NOT NULL  PRIMARY KEY,
  description  TEXT,
  unit_price   DECIMAL(10,2)
);

CREATE TABLE customers (
  customer_id  INT          NOT NULL  PRIMARY KEY,
  country      VARCHAR(60)  NOT NULL
);

CREATE TABLE transactions (
  invoice_no    VARCHAR(20),
  product_id    VARCHAR(20),
  customer_id   INT,
  quantity      INT,
  invoice_date  DATETIME,
  revenue       DECIMAL(10,2),
  FOREIGN KEY (product_id)   REFERENCES products(product_id),
  FOREIGN KEY (customer_id)  REFERENCES customers(customer_id)
);