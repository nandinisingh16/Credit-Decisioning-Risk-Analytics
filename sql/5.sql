WITH risk_metrics AS (
    SELECT
        state,
        income_band,
        employment_stability,
        COUNT(*) AS total_apps,
        SUM(risk_flag) AS high_risk_apps,
        ROUND(AVG(risk_flag), 4) AS default_rate
    FROM loan_applications
    WHERE source = 'train'
    GROUP BY state, income_band, employment_stability
)
SELECT *
FROM risk_metrics
ORDER BY default_rate DESC;
