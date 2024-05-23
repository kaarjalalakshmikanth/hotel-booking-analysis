create database hotel_booking ;
use hotel_booking;

-- What is the total number of bookings?

SELECT COUNT(*) AS total_bookings
FROM hotel_data_kl;

-- How many bookings were canceled?

SELECT COUNT(*) AS canceled_bookings
FROM hotel_data_kl
WHERE is_canceled = "yes";

-- Which month has the highest number of bookings?

SELECT arrival_date_month, COUNT(*) AS bookings_per_month
FROM hotel_data_kl
GROUP BY arrival_date_month
ORDER BY bookings_per_month DESC
LIMIT 1;

-- What is the average number of adults, children, and babies per booking?

SELECT AVG(adults) AS avg_adults, AVG(children) AS avg_children, AVG(babies) AS avg_babies
FROM hotel_data_kl;

-- Which country has the most bookings?

SELECT country, COUNT(*) AS bookings_per_country
FROM hotel_data_kl
GROUP BY country
ORDER BY bookings_per_country DESC
LIMIT 1;

-- What is the most common meal chosen by guests?

SELECT meal, COUNT(*) AS meal_count
FROM hotel_data_kl
GROUP BY meal
ORDER BY meal_count DESC
LIMIT 1;

-- How many bookings were made by repeated guests?

SELECT COUNT(*) AS repeated_guest_bookings
FROM hotel_data_kl
WHERE is_repeated_guest = "yes";

-- Which room type has the highest number of bookings?

SELECT reserved_room_type, COUNT(*) AS bookings_per_room_type
FROM hotel_data_kl
GROUP BY reserved_room_type
ORDER BY bookings_per_room_type DESC
LIMIT 1;

-- What is the average number of special requests per booking?

SELECT AVG(total_of_special_requests) AS avg_special_requests
FROM hotel_data_kl;

-- What is the average number of special requests per booking?

SELECT AVG(total_of_special_requests) AS avg_special_requests
FROM hotel_data_kl;

-- How many bookings have a deposit requirement?

SELECT COUNT(*) AS deposit_bookings
FROM hotel_data_kl
WHERE deposit_type <> 'No Deposit';

-- What is the overall cancellation rate?

SELECT (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hotel_data_kl)) AS cancellation_rate
FROM hotel_data_kl
WHERE is_canceled = "yes";

-- Which market segment has the highest number of bookings?

SELECT market_segment, COUNT(*) AS bookings_per_segment
FROM hotel_data_kl
GROUP BY market_segment
ORDER BY bookings_per_segment DESC
LIMIT 1;

-- END








