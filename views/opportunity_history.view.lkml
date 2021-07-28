view: opportunity_history {
  sql_table_name: `looker-private-demo.salesforce.opportunity_history`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension_group: close {
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
    sql: ${TABLE}.CLOSE_DATE ;;
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
    sql: ${TABLE}.CREATED_DATE ;;
  }

  dimension: forecast_category {
    type: string
    sql: ${TABLE}.FORECAST_CATEGORY ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IS_DELETED ;;
  }

  dimension: opportunity_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.OPPORTUNITY_ID ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.PROBABILITY ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}.STAGE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [id, stage_name, opportunity.forecast_category_name, opportunity.stage_name, opportunity.id]
  }
}
