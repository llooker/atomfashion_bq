view: order_items {
  sql_table_name: ecomm.order_items ;;
  ########## IDs, Foreign Keys, Counts ##########

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: inventory_item_id {
    type: number
    hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: order_id {
    description: "This is the Order ID"
    view_label: "Order ID"
    type: number
    sql: ${TABLE}.order_id ;;
    action: {
      label: "Send this to slack channel"
      url: "https://hooks.zapier.com/hooks/catch/1662138/tvc3zj/"

      param: {
        name: "user_dash_link"
        value: "https://demo.looker.com/dashboards/160?Email={{ users.email._value}}"
      }

      form_param: {
        name: "Message"
        type: textarea
      }

      form_param: {
        name: "Recipient"
        type: select
        default: "zevl"
        option: {
          name: "zevl"
          label: "Zev"
        }
        option: {
          name: "slackdemo"
          label: "Slack Demo User"
        }

      }

      form_param: {
        name: "Channel"
        type: select
        default: "cs"
        option: {
          name: "cs"
          label: "Customer Support"
        }
        option: {
          name: "general"
          label: "General"
        }

      }


    }
  }

  dimension: user_id {
    type: number
    hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    description: "Count of distinct Order Items"
    type: count
    drill_fields: [detail*]
  }

  measure: order_count {
    description: "Count of distinct Orders"
    view_label: "Orders"
    type: count_distinct
    sql: ${order_id} ;;
    drill_fields: [order_id, user_id, shipped_date, total_sale_price]
  }

  measure: count_percent_increase_this_month {
    type: number
    sql: round(1.0 * (1.0*${order_count_last_60_days} - 1.0*${order_count_last_month})/NULLIF(${order_count_last_month}, 0), 2) ;;
    value_format_name: decimal_2
    drill_fields: [order_id, user_id, shipped_date, total_sale_price]
  }

  measure: order_count_last_60_days {
    type: count

    filters: {
      field: is_order_in_last_60_days
      value: "yes"
    }
  }

  measure: order_count_last_month {
    type: count

    filters: {
      field: is_order_in_last_month
      value: "yes"
    }
  }

  measure: order_count_today {
    type: count

    filters: {
      field: is_order_in_last_day
      value: "yes"
    }
  }

  measure: first_purchase_count {
    view_label: "Orders"
    type: count_distinct
    sql: ${order_id} ;;

    filters: {
      field: order_facts.is_first_purchase
      value: "Yes"
    }
  }

  measure: count_users_this_month {
    type: count_distinct
    sql: ${user_id} ;;

    filters: {
      field: is_order_in_last_month
      value: "yes"
    }
  }

  measure: count_users_today {
    type: count_distinct
    sql: ${user_id} ;;

    filters: {
      field: is_order_in_last_day
      value: "yes"
    }
  }

  ########## Time Dimensions ##########

  dimension_group: returned {
    type: time
    timeframes: [time, date, week, month, raw]
    sql: ${TABLE}.returned_at ;;
  }

  dimension_group: shipped {
    type: time
    timeframes: [date, week, month, raw]
    sql: ${TABLE}.shipped_at ;;
  }

  dimension_group: delivered {
    type: time
    timeframes: [date, week, month, raw]
    sql: ${TABLE}.delivered_at ;;
  }

  dimension_group: created {
    view_label: "Orders"
    description: "Date an order was placed"
    type: time
    timeframes: [
      time,
      hour,
      date,
      week,
      month,
      year,
      hour_of_day,
      day_of_week,
      month_num,
      raw,
      week_of_year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: is_order_in_last_60_days {
    type: yesno
    sql: datediff('days', ${order_items.created_date}, current_date()) < 60 ;;
  }

  dimension: is_order_in_last_month {
    type: yesno
    sql: datediff('days', ${order_items.created_date}, current_date()) < 30 ;;
  }

  dimension: is_order_in_last_day {
    type: yesno
    sql: ${order_items.created_date} = current_date()-7 ;;
  }

  dimension: months_since_signup {
    view_label: "Orders"
    type: number
    sql: DATEDIFF('month',${users.created_raw},${created_raw}) ;;
  }

  dimension: reporting_period {
    sql: CASE
        WHEN date_part('year',${created_raw}) = date_part('year',current_date())
        AND ${created_raw} < current_date()
        THEN 'This Year to Date'

        WHEN date_part('year',${created_raw}) + 1 = date_part('year',current_date())
        AND date_part('dayofyear',${created_raw}) <= date_part('dayofyear',current_date())
        THEN 'Last Year to Date'

      END
       ;;
  }

  ########## Logistics ##

  dimension: status {
    description: "status after purchase was made"
    sql: ${TABLE}.status ;;
  }

  dimension: days_to_process {
    type: number
    value_format_name: decimal_2
    sql: CASE
        WHEN ${status} = 'Processing' THEN DATEDIFF('day',${created_raw},current_timestamp()::timestamp_ntz)*1.0
        WHEN ${status} IN ('Shipped', 'Delivered') THEN DATEDIFF('day',${created_raw},${shipped_raw})*1.0
      END
       ;;
  }

  dimension: shipping_time {
    type: number
    value_format_name: decimal_2
    sql: datediff('day',${shipped_raw},${delivered_raw})*1.0 ;;
  }

  measure: average_days_to_process {
    type: average
    value_format_name: decimal_4
    sql: ${days_to_process} ;;
  }

  measure: average_shipping_time {
    type: average
    value_format_name: decimal_4
    sql: ${shipping_time} ;;
  }

  ########## Financial Information ##########

  dimension: sale_price {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.sale_price ;;
  }

  dimension: gross_margin {
    type: number
    value_format: "$#,##0.00"
    sql: ${sale_price} - ${inventory_items.cost} ;;
  }

  dimension: item_gross_margin_percentage {
    type: number
    value_format: "#.0\%"
    sql: 100.0 * ${gross_margin}/${sale_price} ;;
  }

  dimension: item_gross_margin_percentage_tier {
    type: tier
    sql: ${item_gross_margin_percentage} ;;
    tiers: [
      0,
      10,
      20,
      30,
      40,
      50,
      60,
      70,
      80,
      90
    ]
  }

  measure: total_sale_price {
    type: sum
    value_format: "$#,##0.00"
    sql: ${sale_price} ;;
    drill_fields: [order_id, user_id, shipped_date, total_sale_price]
  }

  measure: total_sale_price_today {
    type: sum
    value_format: "$#,##0.00"
    sql: ${sale_price} ;;

    filters: {
      field: is_order_in_last_day
      value: "yes"
    }
  }

  measure: total_sale_price_this_month {
    type: sum
    value_format: "$#,##0.00"
    sql: ${sale_price} ;;

    filters: {
      field: is_order_in_last_month
      value: "yes"
    }
  }

  measure: total_sale_price_last_60_days {
    type: sum
    value_format: "$#,##0.00"
    sql: ${sale_price} ;;

    filters: {
      field: is_order_in_last_60_days
      value: "yes"
    }
  }

  measure: sale_price_percent_increase_this_month {
    type: number
    sql: round((1.0*${total_sale_price_last_60_days} - 1.0*${total_sale_price_this_month})/NULLIF(${total_sale_price_this_month},0), 2) ;;
    value_format_name: decimal_2
  }

  measure: total_gross_margin {
    type: sum
    description: "Sum of Gross Margin"
    value_format: "$#,##0.00"
    sql: ${gross_margin} ;;
  }

  measure: average_sale_price {
    type: average
    value_format: "$#,##0.00"
    sql: ${sale_price} ;;
  }

  measure: average_gross_margin {
    type: average
    value_format: "$#,##0.00"
    sql: ${gross_margin} ;;
  }

  measure: total_gross_margin_percentage {
    type: number
    description: "The gross margin divided by the sale price"
    value_format: "#.0\%"
    sql: round(100.0 * ${total_gross_margin}/NULLIF(${total_sale_price},0), 2) ;;
  }

  ########## Repeat Purchase Facts ##########

  dimension: days_until_next_order {
    type: number
    view_label: "Repeat Purchase Facts"
    sql: DATEDIFF('day',${created_raw},${repeat_purchase_facts.next_order_raw}) ;;
  }

  dimension: repeat_orders_within_30d {
    type: yesno
    view_label: "Repeat Purchase Facts"
    sql: ${days_until_next_order} <= 30 ;;
  }

  measure: count_with_repeat_purchase_within_30d {
    type: count
    view_label: "Repeat Purchase Facts"

    filters: {
      field: repeat_orders_within_30d
      value: "Yes"
    }
  }

  measure: 30_day_repeat_purchase_rate {
    view_label: "Repeat Purchase Facts"
    type: number
    value_format: "#.0\%"
    sql: 100.0 * ${count_with_repeat_purchase_within_30d} / NULLIF(${count},0) ;;
  }

  measure: average_spend_per_user {
    type: number
    value_format_name: usd
    sql: 1.0 * ${total_sale_price} / NULLIF(${users.count},0) ;;
  }

  ########## Sets ##########

  set: detail {
    fields: [id, order_id, status, created_date, sale_price, products.brand, products.item_name, users.portrait, users.name, users.email]
  }
  set: return_detail {
    fields: [id, order_id, status, created_date, returned_date, sale_price, products.brand, products.item_name, users.portrait, users.name, users.email]
  }

  set: simple {
    fields: [
      id,
      order_id,
      status,
      created_date,
      sale_price,
      gross_margin,
      count,
      order_count,
      total_gross_margin,
      average_gross_margin
    ]
  }
}
