view: account {
  sql_table_name: `looker-private-demo.adwords.account`
    ;;

  dimension: _fivetran_id {
    type: number
    sql: ${TABLE}._fivetran_id ;;
  }

  dimension: account_currency_code {
    type: string
    sql: ${TABLE}.account_currency_code ;;
  }

  dimension: account_descriptive_name {
    type: string
    sql: ${TABLE}.account_descriptive_name ;;
  }

  dimension: account_time_zone {
    type: string
    sql: ${TABLE}.account_time_zone ;;
  }

  dimension: customer_descriptive_name {
    type: string
    sql: ${TABLE}.customer_descriptive_name ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.external_customer_id ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_descriptive_name, account_descriptive_name]
  }
}
