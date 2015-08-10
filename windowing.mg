# Windowing

[Windowing functions](http://www.postgresql.org/docs/9.1/static/tutorial-window.html) can be used to simulate aggregation operations that
would usually require an elaborate sequence of joins, or import of the
data into a general purpose programming language.

Consider the following example.

```
SELECT last_name,
       salary,
       department,
       rank() OVER (
        PARTITION BY department
        ORDER BY salary
        DESC)
FROM employees;

last_name    salary   department    rank
Jones        45000    Accounting    1
Williams     37000    Accounting    2
Smith        55000    Sales         1
Adams        50000    Sales         2
Johnson      40000    Marketing     1
```

Here, we have defined a "relative rank" by department salary. This is 
useful in, e.g., feature engineering.

