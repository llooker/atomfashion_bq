view: opportunity {
  sql_table_name: `looker-private-demo.salesforce.opportunity`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.account_id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: campaign_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  dimension_group: cancellation__date___c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.cancellation__date___c ;;
  }

  dimension_group: close {
    type: time
    timeframes: [
      raw,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.close_date ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}.created_by_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.created_date ;;
  }

  dimension_group: end_date_2_0_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date_2_0_c ;;
  }

  dimension: forecast_category_name {
    type: string
    sql: ${TABLE}.forecast_category_name ;;
  }

  dimension: hosted__type___c {
    type: string
    sql: ${TABLE}.HOSTED__TYPE___c ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: license___c {
    type: string
    sql: ${TABLE}.license___c ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.owner_id ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.probability ;;
  }

  dimension: renewal__opportunity___c {
    type: string
    sql: ${TABLE}.RENEWAL__OPPORTUNITY___C ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}.stage_name ;;
  }

  dimension_group: start_date_2_0_c {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date_2_0_c ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_amount {
    type: sum
    sql: ${amount} ;;
    drill_fields: [id, account_id, created_date, amount]
    value_format_name: usd_0
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      forecast_category_name,
      stage_name,
      account.id,
      account.name,
      campaign.id
    ]
  }
}
