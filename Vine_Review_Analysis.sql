-- Create a table where over 50% of reviews are helful
SELECT * INTO helpful_over_50
FROM votes_over_19
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;

SELECT * FROM helpful_over_50

-- Create a paid and unpaid table of reviews
SELECT * INTO vine_uppaid 
FROM helpful_over_50
WHERE vine = 'N';

-- Count total reviews
SELECT COUNT(review_id)
FROM vine_unpaid;

-- Create table of reviews that are 5 star reviews
SELECT * INTO nonvine_paid_5_star
FROM vine_unpaid
WHERE star_rating = 5;

-- Find the percentage of reviews that are 5 star (do this as floats) and repeat for the paid vine talbe
SELECT
((SELECT CAST(COUNT(review_id) AS FLOAT) FROM vine_unpaid WHERE star_rating = 5)/(SELECT COUNT(review_id) FROM vine_unpaid))*100