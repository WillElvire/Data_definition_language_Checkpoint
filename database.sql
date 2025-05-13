-- Table Product
CREATE TABLE Product (
    Product_Id   VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price        NUMBER CHECK (Price > 0)
);

-- Table Customer
CREATE TABLE Customer (
    Customer_Id   VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel  NUMBER
);

-- Table Orders
CREATE TABLE Orders (
    Customer_Id  VARCHAR2(20),
    Product_Id   VARCHAR2(20),
    Quantity     NUMBER,
    Total_Amount NUMBER,
    CONSTRAINT fk_customer FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id),
    CONSTRAINT fk_product  FOREIGN KEY (Product_Id)  REFERENCES Product(Product_Id)
);


ALTER TABLE Product ADD Category VARCHAR2(20);

ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;
