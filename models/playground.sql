{{ config(materialized='view') }}

select
  year,
  count(*) as births
from `bigquery-public-data.samples.natality`
group by year
order by year