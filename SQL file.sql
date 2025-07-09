SELECT `Driver id` FROM test.uber_request_data;

SELECT COUNT(*) AS total_requests
FROM test.uber_request_data;

SELECT `Status`, COUNT(*) AS total
FROM test.uber_request_data
GROUP BY `Status`
ORDER BY total DESC;

SELECT `Pickup point`, COUNT(*) AS request_count
FROM test.uber_request_data
GROUP BY `Pickup point`;

SELECT COUNT(*) AS completed_trips
FROM test.uber_request_data
WHERE `Status` = 'Trip Completed';

SELECT COUNT(*) AS unserved_requests
FROM test.uber_request_data
WHERE `Status` = 'No Cars Available';

SELECT COUNT(*) AS no_driver_requests
FROM test.uber_request_data
WHERE `Driver id` IS NULL;

SELECT DATE(`Request timestamp`) AS request_date, COUNT(*) AS total_requests
FROM test.uber_request_data
GROUP BY request_date
ORDER BY request_date;








