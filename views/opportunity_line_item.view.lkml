view: opportunity_line_item {
  sql_table_name: `looker-private-demo.salesforce.opportunity_line_item`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
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
    sql: ${TABLE}.CANCELLATION__DATE___C ;;
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

  dimension_group: end__date___c {
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
    sql: ${TABLE}.END__DATE___C ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: list_price {
    type: number
    sql: ${TABLE}.list_price ;;
  }

  dimension: opportunity_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.opportunity_id ;;
  }

  dimension: product_2_id {
    type: string
    sql: ${TABLE}.product_2_id ;;
  }

  dimension: product_name_c {
    type: string
    sql: ${TABLE}.product_name_c ;;
  }

  dimension: product_type_c {
    type: string
    sql: ${TABLE}.product_type_c ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: renewal__line_item___c {
    type: string
    sql: ${TABLE}.renewal__line_item___c ;;
  }

  dimension_group: service {
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
    sql: ${TABLE}.service_date ;;
  }

  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
  }

  measure: count {
    type: count
    drill_fields: [id, opportunity.forecast_category_name, opportunity.stage_name, opportunity.id]
  }
}
