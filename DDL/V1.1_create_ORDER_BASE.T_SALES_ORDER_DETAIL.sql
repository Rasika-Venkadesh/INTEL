-- Table creation script for table T_SALES_ORDER_DETAIL
CREATE TABLE IF NOT EXISTS ORDER_DB.ORDER__BASE.T_SALES_ORDER_DETAIL(
    ORDER_ID VARCHAR(10) PRIMARY KEY,
    ORDER_DATE DATE,
    CUSTOMER_ID	VARCHAR(10),
    ITEM_ID	VARCHAR(10),
    QTY	INTEGER,
    TOTAL_AMOUNT NUMBER(12,2),
    CREATE_DATE DATE,
    CREATE_USER	VARCHAR(30),
    PRICE NUMBER(12,2)
)