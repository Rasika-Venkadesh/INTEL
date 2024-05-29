USE DATABASE order_db;

CREATE
	OR REPLACE PROCEDURE ORDER_DB.ORDER__XFRM.P_INVOICE_GENERATE_2 ()
RETURNS STRING LANGUAGE SQL

EXECUTE AS CALLER AS $$

BEGIN
	EXECUTE IMMEDIATE 
		'
        CREATE OR REPLACE VIEW ORDER_DB.ORDER__ANALYSIS.V_INVOICE_GENERATION AS
        WITH discount_calculation AS (
            SELECT 
                i.ORDER_ID,
                i.ORDER_DATE,
                i.INVOICE_DATE,
                i.TOTAL_AMOUNT,
                CASE
                    WHEN oh.COUPON_CODE ilike ''%PERCENT%'' AND c.CATEGORY ilike ''%GOLD%'' THEN i.TOTAL_AMOUNT * 0.05
                    WHEN oh.COUPON_CODE ilike ''%PERCENT%'' AND c.CATEGORY ilike ''%SILVER%'' THEN i.TOTAL_AMOUNT * 0.03
                    WHEN oh.COUPON_CODE ilike ''%PERCENT%'' AND c.CATEGORY ilike ''%BRONZE%'' THEN  i.TOTAL_AMOUNT * 0.01
                    WHEN oh.COUPON_CODE ilike ''%Coupon_X%'' AND c.CATEGORY ilike ''%REGULAR%'' THEN i.TOTAL_AMOUNT * 0.03
                    WHEN oh.COUPON_CODE ilike ''%Coupon_Y%'' AND c.CATEGORY ilike ''%REGULAR%'' THEN i.TOTAL_AMOUNT * 0.02
                    WHEN oh.COUPON_CODE ilike ''%Coupon_Z%'' AND c.CATEGORY ilike ''%REGULAR%'' THEN i.TOTAL_AMOUNT * 0.01
                    ELSE 0 
                END AS DISCOUNT,
                i.CUSTOMER_ID,
                i.CREATE_DATE,
                i.CREATE_USER
            FROM 
                ORDER_DB.ORDER__XFRM.V_INVOICE i
            INNER JOIN 
                ORDER_DB.ORDER__XFRM.V_SALES_ORDER_HEADER oh
            ON 
                i.ORDER_ID = oh.ORDER_ID
            LEFT JOIN 
                ORDER_DB.ORDER__XFRM.V_CUSTOMER_1 c
            ON 
                c.CUSTOMER_ID = oh.CUSTOMER_ID
            WHERE 
                c.STATUS = ''ACTIVE'' 
                AND oh.ORDER_DATE < CURRENT_DATE
        )
        SELECT 
            ORDER_ID,
            ORDER_DATE,
            INVOICE_DATE,
            TOTAL_AMOUNT,
            DISCOUNT,
            (TOTAL_AMOUNT - DISCOUNT) * 0.09 AS TAX_AMOUNT,
            (TOTAL_AMOUNT - DISCOUNT) + ((TOTAL_AMOUNT - DISCOUNT) * 0.09) AS FINAL_INVOICE_AMT,
            CUSTOMER_ID,
            CREATE_DATE,
            CREATE_USER
        FROM discount_calculation;
    '
		;

	RETURN 'FINAL INVOICE AMOUNT calculated and stored in V_INVOICE_GENERATION VIEW ';
END;$$;



--CALL ORDER_DB.ORDER__XFRM.P_INVOICE_GENERATE_2();


--SELECT *
FROM ORDER_DB.ORDER__ANALYSIS.V_INVOICE_GENERATION