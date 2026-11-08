USE membership_analytics;

-- Next lesson: sort subscription plans by monthly price using ORDER BY.
-- Goal: display subscription_plan and price_per_month from subscription_plans.
-- Practice arranging prices from lowest to highest, then highest to lowest.
-- Write your own SELECT and ORDER BY query below.
-- Starter only: the sorting exercise has not been completed.

-- Challenge 1: Most expensive to leaset expensive 
SELECT subscription_plan, price_per_month
FROM subscription_plans
ORDER BY price_per_month DESC;

-- Challenge 2: Filter and sort membership plans 
SELECT subscription_plan, price_per_month
FROM subscription_plans
WHERE price_per_month < 50
ORDER BY price_per_month ASC;

-- Challenge 3: Filter and sort membership plans less then $30
SELECT subscription_plan, price_per_month 
FROM subscription_plans
WHERE price_per_month < 30
ORDER BY price_per_month DESC;

-- Challenge 4: Find membership plans within a price range
SELECT subscription_plan, price_per_month
FROM subscription_plans
WHERE price_per_month > 10
AND price_per_month < 50
ORDER BY price_per_month DESC;

-- Challenge 5: Filter membership plans using OR
SELECT subscription_plan, price_per_month
FROM subscription_plans
WHERE subscription_plan = 'Basic'
OR subscription_plan = 'Student'
ORDER BY subscription_plan ASC;

-- Challenge 6: Combine AND and OR with parentheses
SELECT subscription_plan, price_per_month
FROM subscription_plans
WHERE (subscription_plan = 'Basic' 
OR subscription_plan = 'Student')
AND price_per_month < 15
ORDER BY price_per_month ASC;

-- Challenge 7: Filter membership plans using IN
SELECT subscription_plan, price_per_month
FROM subscription_plans
WHERE subscription_plan IN ('Basic', 'Pro')
AND price_per_month > 15 
ORDER BY price_per_month ASC;

-- Challenge 8: Find the two cheapest membership plans
SELECT subscription_plan, price_per_month
FROM subscription_plans
ORDER BY price_per_month ASC
LIMIT 2;









