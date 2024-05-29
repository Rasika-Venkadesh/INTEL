INSERT INTO ORDER_DB.ORDER__BASE.T_SALES_ORDER_HEADER (
    ORDER_ID,
    ORDER_DATE,
    STATUS,
    CUSTOMER_ID,
    ITEM_COUNT,
    TOTAL_AMOUNT,
    DISCOUNT,
    CREATE_DATE,
    CREATE_USER,
    COUPON_CODE
)
VALUES
    ('o-1', '2024-04-20', 'OPEN', 'c-1', 0, 0, 0, CURRENT_DATE, CURRENT_USER, 'Coupon_X'),
    ('o-2', '2024-05-26', 'OPEN', 'c-1', 0, 0, 0, CURRENT_DATE, CURRENT_USER, 'Coupon_X'),
    ('o-3', '2024-04-25', 'OPEN', 'c-2', 0, 0, 1, CURRENT_DATE, CURRENT_USER, 'PERCENT'),
    ('o-4', '2024-05-26', 'OPEN', 'c-3', 0, 0, 3, CURRENT_DATE, CURRENT_USER, 'SPENT'),
    ('o-5', '2024-05-26', 'OPEN', 'c-4', 0, 0, 5, CURRENT_DATE, CURRENT_USER, 'PERCENT'),
    ('o-6', '2024-05-26', 'OPEN', 'c-5', 0, 0, 0, CURRENT_DATE, CURRENT_USER, 'Coupon_Z'),
    ('o-7', '2024-05-26', 'OPEN', 'c-6', 0, 0, 3, CURRENT_DATE, CURRENT_USER, 'SPENT');
