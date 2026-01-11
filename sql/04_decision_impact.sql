-- STEP 22: Business decision query
WITH ranked_segments AS (
     SELECT
         income_band,
         employment_stability,
         COUNT(*) AS apps,
         AVG(risk_flag) AS default_rate
     FROM loan_applications
     WHERE source = 'train'
     GROUP BY income_band, employment_stability
 ),
 top_risk AS (
     SELECT *
     FROM ranked_segments
     ORDER BY default_rate DESC
     LIMIT 1
 )
 SELECT
     (SELECT apps FROM top_risk) AS risky_apps,
     ROUND(
         (SELECT apps FROM top_risk) * 100.0 /
         (SELECT SUM(apps) FROM ranked_segments),
         2
     ) AS pct_apps_affected;
