view: user_order_facts {
  derived_table: {
    datagroup_trigger: every_day
    sql: SELECT
        user_id
        , COUNT(DISTINCT order_id) AS lifetime_orders
        , SUM(sale_price) AS lifetime_revenue
        , MIN(NULLIF(created_at_advance,0::timestamp_ntz)) AS first_order
        , MAX(NULLIF(created_at_advance,0::timestamp_ntz)) AS latest_order
        , COUNT(DISTINCT DATE_TRUNC('month', NULLIF(created_at_advance,0::timestamp_ntz))) AS number_of_distinct_months_with_orders
FROM atom.order_items
GROUP BY user_id
       ;;
  }

  dimension: user_id {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  ##### Time and Cohort Fields ######

  dimension_group: first_order {
    type: time
    timeframes: [date, week, month, year, raw]
    sql: ${TABLE}.first_order ;;
  }

  dimension_group: latest_order {
    type: time
    timeframes: [date, week, month, year, raw]
    sql: ${TABLE}.latest_order ;;
  }

  dimension: days_as_customer {
    description: "Days between first and latest order"
    type: number
    sql: DATEDIFF('day', ${first_order_raw}, ${latest_order_raw})+1 ;;
  }

  dimension: days_as_customer_tiered {
    type: tier
    tiers: [
      0,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      30,
      60,
      90,
      180
    ]
    sql: ${days_as_customer} ;;
  }

  ##### Lifetime Behavior - Order Counts ######

  dimension: lifetime_orders {
    type: number
    sql: ${TABLE}.lifetime_orders ;;
  }

  dimension: repeat_customer {
    description: "Lifetime Count of Orders > 1"
    type: yesno
    sql: ${lifetime_orders} > 1 ;;
  }

  dimension: lifetime_orders_tier {
    type: tier
    tiers: [
      0,
      1,
      2,
      3,
      5,
      10
    ]
    sql: ${lifetime_orders} ;;
    style: integer
  }

  measure: average_lifetime_orders {
    type: average
    value_format: "#.##"
    sql: ${lifetime_orders} ;;
  }

  dimension: distinct_months_with_orders {
    type: number
    sql: ${TABLE}.number_of_distinct_months_with_orders ;;
  }

  ##### Lifetime Behavior - Revenue ######

  dimension: lifetime_revenue {
    type: number
    description: "Total Revenue generated by a User (up to the latest day)"
    sql: ${TABLE}.lifetime_revenue ;;
    value_format: "[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$#,##0.00"
  }

  dimension: lifetime_revenue_tier {
    type: tier
    tiers: [
      0,
      100,
      500
    ]
    sql: ${lifetime_revenue} ;;
    style: integer

  }

  measure: average_lifetime_revenue {
    type: average
    sql: round(${lifetime_revenue}, 2) ;;
    value_format: "[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$#,##0.00"

  }

  ########## Sets ##########

  set: simple {
    fields: [
      user_id,
      first_order_date,
      latest_order_date,
      lifetime_revenue,
      lifetime_revenue_tier,
      days_as_customer,
      repeat_customer
    ]
  }
}