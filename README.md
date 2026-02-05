# dbt Jaffle Shop Analytics Project

This project demonstrates analytics engineering best practices using dbt and BigQuery.

## Overview
The goal of this project is to transform raw Jaffle Shop and Stripe data into clean,
analytics-ready fact and dimension tables using dbt.

## Data Sources
- `dbt-tutorial.jaffle_shop.customers`
- `dbt-tutorial.jaffle_shop.orders`
- `dbt-tutorial.stripe.payment`

## Models
### Staging
- `stg_jaffle_shop__customers`
- `stg_jaffle_shop__orders`
- `stg_stripe__payments` (amount normalized from cents to dollars)

### Marts
- `fct_orders` — order-level fact table with payment amounts
- `dim_customers` — customer dimension with lifetime value

## Key Business Metric
- **Customer Lifetime Value**
- Validated total LTV = **$1,672**

## Tools Used
- dbt Cloud
- BigQuery
- GitHub

## Key Concepts Demonstrated
- Source definitions and staging layers
- Fact vs dimension modeling
- Unit normalization (cents → dollars)
- Git-based development workflow with pull requests
