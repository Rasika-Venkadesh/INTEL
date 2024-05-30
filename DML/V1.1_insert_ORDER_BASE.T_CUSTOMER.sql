INSERT INTO ORDER_DB.ORDER__BASE.T_CUSTOMER (
    CUSTOMER_ID,
    ADDRESS,
    PHONE_NO,
    CATEGORY,
    STATUS,
    TOTAL_ORDERS,
    TOTAL_INVOICE_AMOUNT,
    LOYALTY_POINTS,
    CREATE_DATE,
    CREATE_USER
)
VALUES
    ('c-1', 'Chennai', '9080502121', 'Regular', 'ACTIVE', 0, 0, 0, CURRENT_DATE, CURRENT_USER),
    ('c-2', 'Madurai', '9994563782', 'Bronze', 'ACTIVE', 0, 0, 0, CURRENT_DATE, CURRENT_USER),
    ('c-3', 'Pune', '9935627814', 'Silver', 'ACTIVE', 0, 0, 0, CURRENT_DATE, CURRENT_USER),
    ('c-4', 'Gauhati', '9021210324', 'Gold', 'INACTIVE', 0, 0, 0, CURRENT_DATE, CURRENT_USER),
    ('c-5', 'Mumbai', '7708242013', 'Regular', 'INACTIVE', 0, 0, 0, CURRENT_DATE, CURRENT_USER),
    ('c-6', 'Tanjore', '9626502147', 'Silver', 'ACTIVE', 0, 0, 0, CURRENT_DATE, CURRENT_USER),
    ('c-7', 'Dindugul', '9686302516', 'Regular', 'ACTIVE', 0, 0, 0, CURRENT_DATE, CURRENT_USER),
    ('c-8', 'Trichy', '8668019425', 'Gold', 'INACTIVE', 0, 0, 0, CURRENT_DATE, CURRENT_USER),
    ('c-9', 'Kadappa', '9647825463', 'Regular', 'ACTIVE', 0, 0, 0, CURRENT_DATE, CURRENT_USER),
    ('c-10', 'Bangalore', '9000080000', 'Silver', 'ACTIVE', 0, 0, 0, CURRENT_DATE, CURRENT_USER),
    ('c-11', 'Jodhpur', '9999933333', 'Bronze', 'ACTIVE', 0, 0, 0, CURRENT_DATE, CURRENT_USER),
    ('c-12','Delhi','9452018907','Regular','ACTIVE',0,0,0,CURRENT_DATE,CURRENT_USER) 
