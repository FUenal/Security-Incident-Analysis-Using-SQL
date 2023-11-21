# This query retrieves all columns from the log_in_attempts table where the login time is after 18:00 and the login attempt 
# is unsuccessful (denoted by a value of 0 in the success column). It provides a way to filter and focus on failed login
# attempts that occurred after the specified time, allowing for further investigation into potential security incidents or anomalies.


SELECT *
FROM log_in_attempts
WHERE login_time > '18:00' AND success = 0;


#
#


#By executing this SQL query, I aimed to retrieve all available information regarding the login attempts during the specified period. 
#The query consisted of a WHERE clause that utilized the greater than or equal to (>=) 
#and less than or equal to (<=) operators to encompass the dates May 8 and May 9, 2022.

SELECT *
FROM log_in_attempts
WHERE login_date >= '2022-05-08' AND login_date <= '2022-05-09';

#
#

# By executing this query, the login attempts that occurred outside of Mexico are identified. 
# The results will provide insights into any suspicious activity originating from locations other than Mexico.

SELECT *
FROM log_in_attempts
WHERE country NOT LIKE 'MEX%';

#
#
# This query allows for precise filtering, ensuring that only employees in the Marketing department and located in offices within the East building are included in the result set.  
SELECT *
FROM employees
WHERE department = 'Marketing' AND office LIKE 'East-%';
