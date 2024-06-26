-- Table creation script for table T_CUSTOMER
CREATE TABLE IF NOT EXISTS ORDER_DB.ORDER__BASE.T_CUSTOMER(
    CUSTOMER_ID	VARCHAR(10) PRIMARY KEY,
    ADDRESS	VARCHAR(50),
    PHONE_NO VARCHAR(10),
    CATEGORY VARCHAR(10),
    STATUS VARCHAR(10),
    TOTAL_ORDERS INTEGER,
    TOTAL_INVOICE_AMOUNT NUMBER(12,2),
    LOYALTY_POINTS NUMBER(12,2),
    CREATE_DATE	DATE,
    CREATE_USER	VARCHAR(30)
)