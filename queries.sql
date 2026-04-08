-- 1. Total revenue by customer
SELECT
  customer,
  SUM(revenue) AS total_revenue
FROM orders
GROUP BY customer
ORDER BY total_revenue DESC;

-- 2. Total revenue by region
SELECT
  region,
  SUM(revenue) AS total_revenue
FROM orders
GROUP BY region
ORDER BY total_revenue DESC;

-- 3. Customers with total revenue over 300
SELECT
  customer,
  SUM(revenue) AS total_revenue
FROM orders
GROUP BY customer
HAVING SUM(revenue) > 300
ORDER BY total_revenue DESC;

-- 4. Top customer overall
SELECT
  customer,
  SUM(revenue) AS total_revenue
FROM orders
GROUP BY customer
ORDER BY total_revenue DESC
LIMIT 1;

-- 5. Total revenue by product
SELECT
  product,
  SUM(revenue) AS total_revenue
FROM orders
GROUP BY product
ORDER BY total_revenue DESC;

-- 6. Total revenue by customer for orders after 2026-01-10
SELECT
  customer,
  SUM(revenue) AS total_revenue
FROM orders
WHERE orderdate >= '2026-01-10'
GROUP BY customer
ORDER BY total_revenue DESC;

-- 7. Customers with more than 1 order
SELECT
  customer,
  COUNT(*) AS total_orders
FROM orders
GROUP BY customer
HAVING COUNT(*) > 1
ORDER BY total_orders DESC;

-- 8. Average revenue per customer
SELECT
  customer,
  AVG(revenue) AS average_revenue
FROM orders
GROUP BY customer
ORDER BY average_revenue DESC;

-- 9. Top customer in each region
SELECT *
FROM (
  SELECT
    region,
    customer,
    SUM(revenue) AS total_revenue,
    ROW_NUMBER() OVER (
      PARTITION BY region
      ORDER BY SUM(revenue) DESC
    ) AS rank
  FROM orders
  GROUP BY region, customer
) ranked
WHERE rank = 1;

-- 10. High-value customers after 2026-01-10
SELECT
  customer,
  SUM(revenue) AS total_revenue
FROM orders
WHERE orderdate >= '2026-01-10'
GROUP BY customer
HAVING SUM(revenue) > 200
ORDER BY total_revenue DESC;
