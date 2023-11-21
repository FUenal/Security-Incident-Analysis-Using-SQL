# Security Incident Analysis Using SQL
![Dark Purple Technical Roadmap Brainstorm(6)](https://github.com/FUenal/Security-Incident-Analysis-Using-SQL/blob/main/assets/1.png)

## Introduction

The objective of these situations is to evaluate my competency in utilizing SQL for data analysis and addressing problems. It seeks to confirm my capability to formulate SQL queries, implement filters, and extract pertinent information from a database in accordance with specific criteria.

## Objective 

This task assesses my grasp of SQL syntax, query creation, and data retrieval methods through a simulated data analysis scenario. It evaluates my proficiency in efficiently navigating and querying a database, extracting pertinent insights and information to meet specific requirements or solve problems.

These exercises provide a hands-on illustration of my SQL proficiency, demonstrating my adeptness in manipulating data, implementing filters, and analyzing datasets to unveil patterns, anomalies, or other significant information. They underscore my competence in employing SQL as a versatile tool for querying and analyzing data, enabling me to extract valuable insights and draw informed conclusions.


## Scenario 1

In this situation, I came across a potential security incident occurring outside regular business hours. This incident prompted me to launch an inquiry to pinpoint the underlying cause and evaluate its repercussions. To delve deeper into the matter, I had to execute a query on the ``log_in_attempts`` table, concentrating on examining login activity that occurred past the specified closing time of 6 PM.

I employed the subsequent query:

```
SELECT *
FROM log_in_attempts
WHERE login_time > '18:00' AND success = 0;
```
<details close>

<summary>The Results:</summary>
  
![SQLQUERY](https://github.com/FUenal/Security-Incident-Analysis-Using-SQL/blob/main/assets/2.png)

</details>

> This query fetches all columns from the ``log_in_attempts`` table where the login time is past ``18:00`` and the login attempt is unsuccessful (indicated by a value of ``0`` in the ``success`` column). It offers a means to filter and concentrate on unsuccessful login attempts that took place after the designated time, facilitating a more in-depth examination of potential security incidents or anomalies.

 <br />
 <br />
 
## Scenario 2

In this situation, I came across a dubious event that occurred on November 9, 2023. To conduct a comprehensive investigation into this incident, my attention was directed towards scrutinizing all login attempts that occurred on that particular day and the day before. Employing SQL filters, I formulated a query that pinpointed all login attempts within the timeframe of November 8 and November 9, 2023, by filtering records based on the "login_date" column.

I utilized the subsequent query:

```
SELECT *
FROM log_in_attempts
WHERE login_date >= '2023-11-08' AND login_date <= '2023-11-09';

```
<details close>

<summary>The Results:</summary>


![SQLQUERY2](https://github.com/FUenal/Security-Incident-Analysis-Using-SQL/blob/main/assets/3.png)


</details>

> Through the execution of this SQL query, my objective was to fetch all pertinent details regarding the login attempts within the designated timeframe. The query incorporated a ``WHERE`` clause employing the greater than or equal to ``(>=)`` and less than or equal to ``(<=)`` operators to encompass the dates May 8 and May 9, 2022.

> The aim of this query was to compile a thorough summary of the login activity during the specific days of interest, facilitating a more detailed analysis of the events leading up to and including the suspicious incident. Through the examination of the obtained data, I could delve deeper into the login attempts, extracting valuable insights or patterns that could contribute to the investigation and resolution of the suspicious event.
 
 <br />
 <br />

## Scenario 3

In this situation, there were suspicious login attempts, and it was established that these attempts did not originate from Mexico. To conduct a more in-depth investigation, a query had to be formulated to identify all login attempts that occurred outside of Mexico. The "country" column includes values such as MEX and MEXICO, necessitating the utilization of the ``LIKE`` keyword with ``%`` to accommodate variations in the data.

I employed the subsequent query:

```
SELECT *
FROM log_in_attempts
WHERE country NOT LIKE 'MEX%';

```
<details close>

<summary>The Results:</summary>


![SQLQUERY4](https://github.com/FUenal/Security-Incident-Analysis-Using-SQL/blob/main/assets/4.png)



</details>

> Through the execution of this query, it identifies the login attempts that took place outside of Mexico. The outcomes will offer insights into any suspicious activity originating from locations other than Mexico.

> This query showcases the utilization of SQL filters and the ``LIKE`` keyword with ``%`` to refine the search to specific login attempts based on the country column. It efficiently excludes records related to Mexico, thereby narrowing the focus to login attempts originating from other countries!

 <br />
 <br />

## Scenario 4

In this situation, I was assigned the responsibility of collecting information about employee machines in the Marketing department for security updates. To achieve this, I had to execute a query on the employees table using SQL filters to pinpoint all employees within the Marketing department, particularly those situated in offices within the East building.

I employed the subsequent query:

```
SELECT *
FROM employees
WHERE department = 'Marketing' AND office LIKE 'East-%';

```
<details close>

<summary>The Results:</summary>



![SQLQUERY3](https://github.com/FUenal/Security-Incident-Analysis-Using-SQL/blob/main/assets/5.png)


</details>

> This query enables precise filtering, ensuring that the result set includes only employees in the Marketing department and situated in offices within the East building. The obtained information will furnish the necessary details to proceed with the security updates on their respective machines.
> Through the execution of this query, my intention was to fetch all columns ``( * )`` from the employees table where the department is Marketing and the office starts with ``'East-'``. The ``%`` wildcard is applied after ``'East-'`` to match any characters that follow, facilitating the identification of offices specifically within the East building.
