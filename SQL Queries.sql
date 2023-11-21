# This query fetches all columns from the log_in_attempts table where the login time is past 18:00 and the login attempt
# is unsuccessful (indicated by a value of 0 in the success column). It offers a means to filter and concentrate on failed login
# attempts that took place after the specified time, facilitating a more in-depth examination of potential security incidents or anomalies.


SELECT *
FROM log_in_attempts
WHERE login_time > '18:00' AND success = 0;


#
#


# Through the execution of this SQL query, my goal was to obtain all relevant information regarding the login attempts within the designated timeframe.
# The query incorporated a WHERE clause utilizing the greater than or equal to (>=) and less than or equal to (<=) operators to cover the dates May 8 and May 9, 2022.

SELECT *
FROM log_in_attempts
WHERE login_date >= '2022-05-08' AND login_date <= '2022-05-09';

#
#

# Through the execution of this query, it identifies the login attempts that took place outside of Mexico. The outcomes will offer insights into any suspicious 
# activity originating from locations other than Mexico.

SELECT *
FROM log_in_attempts
WHERE country NOT LIKE 'MEX%';

#
#
# This query enables precise filtering, guaranteeing that the result set includes only employees in the Marketing department situated in offices within the East building. 
SELECT *
FROM employees
WHERE department = 'Marketing' AND office LIKE 'East-%';
