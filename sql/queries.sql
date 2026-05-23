USE market_intelligence;

SELECT
    p.product_id,
    p.description,
    SUM(t.quantity)               AS total_units_sold,
    ROUND(SUM(t.revenue), 2)      AS total_revenue,
    COUNT(DISTINCT t.invoice_no)  AS number_of_orders
FROM transactions t
JOIN products p ON t.product_id = p.product_id
GROUP BY p.product_id, p.description
ORDER BY total_revenue DESC
LIMIT 20;