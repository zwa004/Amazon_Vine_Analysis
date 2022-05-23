-- Count total reviews
-- SELECT COUNT(review_id)
-- FROM vine_unpaid
-- WHERE star_rating = 5;

-- Create table of reviews that are 5 star reviews
-- SELECT * INTO vine_paid_5_star
-- FROM vine_paid
-- WHERE star_rating = 5;

-- -- -- Find the percentage of reviews that are 5 star (do this as floats)
SELECT
((SELECT CAST(COUNT(review_id) AS FLOAT) FROM vine_unpaid WHERE star_rating = 5)/(SELECT COUNT(review_id) FROM vine_unpaid))*100

