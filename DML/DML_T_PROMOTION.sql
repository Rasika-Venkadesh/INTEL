INSERT INTO ORDER_DB.ORDER__BASE.T_PROMOTION (
    PROMOTION_ID,
    CUSTOMER_CATEGORY,
    PROMOTION_TYPE,
    PROMOTION_VALUE,
    COMMENT
)
VALUES 
    ('1001', 'Gold', 'Discount', 5, 'PERCENT'),
    ('1002', 'Silver', 'Discount', 3, 'PERCENT'),
    ('1003', 'Bronze', 'Discount', 1, 'PERCENT'),
    ('1004', 'Regular', 'Coupon_X', 0.03, 'AMOUNT'),
    ('1005', 'Regular', 'Coupon_Y', 0.02, 'AMOUNT'),
    ('1006', 'Regular', 'Coupon_Z', 0.01, 'AMOUNT'),
    ('1007', 'Gold', 'Loyalty', 100, 'SPENT'),
    ('1008', 'Silver', 'Loyalty', 50, 'SPENT'),
    ('1009', 'Bronze', 'Loyalty', 30, 'SPENT');
