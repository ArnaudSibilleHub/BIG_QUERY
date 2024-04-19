WITH tvf_result AS (
  SELECT * FROM `bge-2024.Leads_per_period.LeadsAllListAggPartnersIds`
)

CREATE MATERIALIZED VIEW bge-2024.Leads_per_period.Mat_view_AggAlllists AS

SELECT *
FROM tvf_result;


-- Insert new rows
INSERT INTO `bge-2024.Leads_per_period.initial_table_to_29022024`
SELECT *
FROM `bge-2024.Leads_per_period.Mat_view_AggAlllists`