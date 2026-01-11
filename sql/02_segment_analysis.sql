-- STEP 17: Default rate by income band
SELECT
     income_band,
     COUNT(*) AS total_apps,
     ROUND(AVG(risk_flag) * 100, 2) AS default_rate_pct
 FROM loan_applications
 WHERE source = 'train'
 GROUP BY income_band
 ORDER BY default_rate_pct DESC;

-- STEP 18: Default rate by age group
SELECT
     age_group,
     COUNT(*) AS total_apps,
     ROUND(AVG(risk_flag) * 100, 2) AS default_rate_pct
 FROM loan_applications
 WHERE source = 'train'
 GROUP BY age_group
 ORDER BY default_rate_pct DESC;

-- STEP 19: Default rate by employment stability
SELECT
     employment_stability,
     COUNT(*) AS total_apps,
    ROUND(AVG(risk_flag) * 100, 2) AS default_rate_pct
 FROM loan_applications
 WHERE source = 'train'
 GROUP BY employment_stability
 ORDER BY default_rate_pct DESC;
