-- Query 1: Top 10 DRGs by Average Covered Charges
SELECT
  drg_definition,
  AVG(average_covered_charges) AS avg_covered_charges
FROM
  `bigquery-public-data.cms_medicare.inpatient_charges_2015`
GROUP BY
  drg_definition
ORDER BY
  avg_covered_charges DESC
LIMIT 10;

-- Query 2: Average Covered Charges by State
SELECT
  provider_state,
  AVG(average_covered_charges) AS avg_covered_charges
FROM
  `bigquery-public-data.cms_medicare.inpatient_charges_2015`
GROUP BY
  provider_state
ORDER BY
  avg_covered_charges DESC;

-- Query 3: Top Hospitals by Total Discharges
SELECT
  provider_name,
  SUM(total_discharges) AS total_discharges
FROM
  `bigquery-public-data.cms_medicare.inpatient_charges_2015`
GROUP BY
  provider_name
ORDER BY
  total_discharges DESC
LIMIT 10;
