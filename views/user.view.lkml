view: user {
  sql_table_name: `looker-private-demo.salesforce.user`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: ae_region_c {
    type: string
    sql: ${TABLE}.AE_REGION_C ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }

  dimension_group: hire__date___c {
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
    sql: ${TABLE}.HIRE__DATE___C ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.IS_ACTIVE ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
  }

  dimension: manager_id {
    type: string
    sql: ${TABLE}.manager_id ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.PHONE ;;
  }

  dimension_group: quota__start__date___c {
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
    sql: ${TABLE}.QUOTA__START__DATE___C ;;
  }

  dimension: role__name___c {
    type: string
    sql: ${TABLE}.ROLE__NAME___C ;;
  }

  dimension: sales__team___c {
    type: string
    sql: ${TABLE}.SALES__TEAM___C ;;
  }

  measure: count {
    type: count
    drill_fields: [id, last_name, first_name]
  }
}
