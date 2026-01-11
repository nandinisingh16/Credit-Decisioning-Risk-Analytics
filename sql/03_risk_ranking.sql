-- STEP 20: Combination risk
SELECT
     income_band,
     employment_stability,
     COUNT(*) AS total_apps,
     ROUND(AVG(risk_flag) * 100, 2) AS default_rate_pct
 FROM loan_applications
 WHERE source = 'train'
 GROUP BY income_band, employment_stability
 HAVING COUNT(*) > 1000
 ORDER BY default_rate_pct DESC
 LIMIT 10;

-- STEP 21: Ranking risky segments
WITH segment_risk AS (
     SELECT
         income_band,
         employment_stability,
         ROUND(AVG(risk_flag) * 100, 2) AS default_rate_pct
     FROM loan_applications
     WHERE source = 'train'
     GROUP BY income_band, employment_stability
 )
 SELECT *,
        RANK() OVER (ORDER BY default_rate_pct DESC) AS risk_rank
 FROM segment_risk;
