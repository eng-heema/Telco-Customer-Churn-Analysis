USE TelcoChurn;
GO
 -- How many customers do we have?
SELECT 
    COUNT(*) AS TotalCustomers
FROM TelcoCustomerChurn;


-- How many customers churned?
SELECT 
    COUNT(*) AS TotalCustomers
FROM TelcoCustomerChurn
where Churn = 1 ;


-- What is the overall Churn Rate?
SELECT
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS ChurnRate
FROM TelcoCustomerChurn;


-- Which Contract has the highest Churn?
SELECT
    Contract,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS ChurnRate
FROM TelcoCustomerChurn
GROUP BY Contract
ORDER BY ChurnRate DESC;


-- Does Tenure affect Churn?
SELECT
    CASE
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure <= 24 THEN '13-24 Months'
        WHEN tenure <= 48 THEN '25-48 Months'
        ELSE '49+ Months'
    END AS TenureGroup,

    COUNT(*) AS TotalCustomers,

    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,

    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS ChurnRate

FROM TelcoCustomerChurn

GROUP BY
    CASE
        WHEN tenure <= 12 THEN '0-12 Months'
        WHEN tenure <= 24 THEN '13-24 Months'
        WHEN tenure <= 48 THEN '25-48 Months'
        ELSE '49+ Months'
    END

ORDER BY ChurnRate DESC;


-- Does Monthly Charges affect Churn?
SELECT
    CASE
        WHEN MonthlyCharges < 40 THEN 'Low'
        WHEN MonthlyCharges < 80 THEN 'Medium'
        ELSE 'High'
    END AS MonthlyChargesGroup,

    COUNT(*) AS TotalCustomers,

    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,

    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS ChurnRate

FROM TelcoCustomerChurn

GROUP BY
    CASE
        WHEN MonthlyCharges < 40 THEN 'Low'
        WHEN MonthlyCharges < 80 THEN 'Medium'
        ELSE 'High'
    END

ORDER BY ChurnRate DESC;


-- Which Internet Service has the highest Churn?
SELECT
    InternetService,
    COUNT(*) AS TotalCustomers,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,

    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS ChurnRate

FROM TelcoCustomerChurn

GROUP BY InternetService

ORDER BY ChurnRate DESC;


-- Which Payment Method has the highest Churn?
SELECT
    PaymentMethod,
    COUNT(*) AS TotalCustomers,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,

    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS ChurnRate

FROM TelcoCustomerChurn

GROUP BY PaymentMethod

ORDER BY ChurnRate DESC;


-- Does Tech Support relate to Churn?
SELECT
    TechSupport,
    COUNT(*) AS TotalCustomers,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,

    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS ChurnRate

FROM TelcoCustomerChurn

GROUP BY TechSupport

ORDER BY ChurnRate DESC;


-- Who are the highest-risk customers?
SELECT
    customerID,
    tenure,
    MonthlyCharges,
    Contract,
    InternetService,
    PaymentMethod,
    TechSupport,
    Churn
FROM TelcoCustomerChurn
WHERE Contract = 'Month-to-month'
  AND InternetService = 'Fiber optic'
  AND tenure <= 12
  AND MonthlyCharges >= 80
ORDER BY MonthlyCharges DESC;