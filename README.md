# Security Incident Analysis Using SQL
![Dark Purple Technical Roadmap Brainstorm(6)](https://github.com/AmiliaSalva/Security-Incident-Investigation-After-Hours-Failed-Login-Attempts-Analysis-Using-SQL/assets/132176058/658cf34a-e3ca-4ed4-86ba-8db62b39e989)

## Introduction

The purpose of these scenarios are to assess my proficiency in using SQL for data analysis and problem-solving. It aims to validate my ability to construct SQL queries, apply filters, and retrieve relevant information from a database based on specific criteria.

## Objective 

This exercise evaluates my understanding of SQL syntax, query construction, and data retrieval techniques by simulating a scenario involving data analysis. It assesses my capability to navigate and query a database effectively, extracting valuable insights and information to address specific requirements or solve problems.

These scenarios serve as a practical demonstration of my SQL skills, showcasing my ability to manipulate data, apply filters, and analyze datasets to uncover patterns, anomalies, or other meaningful information. It showcases my competence in utilizing SQL as a versatile tool for querying and analyzing data, enabling me to extract valuable insights and draw informed conclusions.


## Scenario 1

In this scenario, I encountered a potential security incident that took place after business hours. The incident prompted me to initiate an investigation to identify the root cause and assess the impact. To gain deeper insights into the situation, I needed to query the ``log_in_attempts`` table and focus on reviewing the login activity that occurred after the designated closing time of 6 PM.

I used the following query:

```
SELECT *
FROM log_in_attempts
WHERE login_time > '18:00' AND success = 0;
```
<details close>

<summary>The Results:</summary>
  
![SQLQUERY](https://github.com/AmiliaSalva/Security-Incident-Investigation-After-Hours-Failed-Login-Attempts-Analysis-Using-SQL/assets/132176058/c452a1d3-519e-4e6c-a20c-875160576533)

</details>

> This query retrieves all columns from the ``log_in_attempts`` table where the login time is after ``18:00`` and the login attempt is unsuccessful (denoted by a value of ``0`` in the ``success`` column). It provides a way to filter and focus on failed login attempts that occurred after the specified time, allowing for further investigation into potential security incidents or anomalies.

 <br />
 <br />
 
## Scenario 2

In this scenario, I encountered a suspicious event that took place on May 9, 2022. To investigate this incident thoroughly, my focus was on reviewing all login attempts that occurred on that specific day and the preceding day. Utilizing SQL filters, I constructed a query that identified all login attempts falling within the timeframe of May 8 and May 9, 2022, by filtering records based on the login_date column.

I used the following query:

```
SELECT *
FROM log_in_attempts
WHERE login_date >= '2022-05-08' AND login_date <= '2022-05-09';

```
<details close>

<summary>The Results:</summary>


![SQLQUERY2](https://github.com/AmiliaSalva/Security-Incident-Investigation-After-Hours-Failed-Login-Attempts-Analysis-Using-SQL/assets/132176058/b66b7e33-b7be-43c3-800e-e0a2d81a32d8)


</details>

> By executing this SQL query, I aimed to retrieve all available information regarding the login attempts during the specified period. The query consisted of a ``WHERE`` clause that utilized the greater than or equal to ``(>=)`` and less than or equal to ``(<=)`` operators to encompass the dates May 8 and May 9, 2022.

> The purpose of this query was to gather a comprehensive overview of the login activity on the specific days of interest, enabling a closer examination of the events leading up to and including the suspicious incident. By reviewing the retrieved data, I could delve deeper into the login attempts and extract valuable insights or patterns that might aid in the investigation and resolution of the suspicious event.
 
 <br />
 <br />

## Scenario 3

In this scenario, there have been suspicious login attempts, and it has been determined that these attempts did not originate in Mexico. To investigate further, a query needed to be created to identify all login attempts that occurred outside of Mexico. The country column contains values such as MEX and MEXICO, requiring the use of the ``LIKE`` keyword with `` % `` to account for variations in the data.

I used the following query:

```
SELECT *
FROM log_in_attempts
WHERE country NOT LIKE 'MEX%';

```
<details close>

<summary>The Results:</summary>


![SQLQUERY4](https://github.com/AmiliaSalva/Security-Incident-Investigation-After-Hours-Failed-Login-Attempts-Analysis-Using-SQL/assets/132176058/dbfc324e-7e1e-4a43-b6c6-bfac07b7ebe4)



</details>

> By executing this query, the login attempts that occurred outside of Mexico are identified. The results will provide insights into any suspicious activity originating from locations other than Mexico.

> This query demonstrates the use of SQL filters and the ``LIKE`` keyword with ``%`` to narrow down the search to specific login attempts based on the country column. It effectively filters out records related to Mexico, which narrows down the focus into login attempts originating from other countries!

 <br />
 <br />

## Scenario 4

In this scenario, I have been tasked me with gathering information on employee machines in the Marketing department for security updates. To accomplish this, I needed to query the employees table using SQL filters to identify all employees within the Marketing department, specifically those located in offices within the East building.

I used the following query:

```
SELECT *
FROM employees
WHERE department = 'Marketing' AND office LIKE 'East-%';

```
<details close>

<summary>The Results:</summary>



![SQLQUERY3](https://github.com/AmiliaSalva/Security-Incident-Investigation-After-Hours-Failed-Login-Attempts-Analysis-Using-SQL/assets/132176058/2421ac31-f378-4b0f-8d1a-cc93bb2cebd4)


</details>

> This query allows for precise filtering, ensuring that only employees in the Marketing department and located in offices within the East building are included in the result set. The retrieved information will provide the necessary details to proceed with the security updates on their respective machines.
> By executing this query, I aimed to retrieve all columns ``( * )`` from the employees table where the department is Marketing and the office starts with ``'East-'``. The ``%`` wildcard is used after ``'East-'`` to match any characters that follow, enabling the identification of offices specifically within the East building.
