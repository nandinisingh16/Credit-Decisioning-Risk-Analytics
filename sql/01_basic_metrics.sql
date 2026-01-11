-- STEP 15: Understand the table
SELECT
     COUNT(*) AS total_rows,
     COUNT(DISTINCT id) AS unique_applicants
 FROM loan_applications;

-- STEP 16: Overall default rate
SELECT
     ROUND(AVG(risk_flag) * 100, 2) AS overall_default_rate_pct
 FROM loan_applications
 WHERE source = 'train';
