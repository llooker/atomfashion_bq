view: autotelemetry_predict {
  sql_table_name: `looker-private-demo.automotive_customer_360.autotelemetry_predict`
    ;;

  dimension: battery {
    type: number
    sql: ${TABLE}.battery ;;
  }

  dimension: c_temp {
    type: number
    sql: ${TABLE}.cTemp ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: dtc {
    type: number
    sql: ${TABLE}.dtc ;;
  }

  dimension: e_load {
    type: number
    sql: ${TABLE}.eLoad ;;
  }

  dimension: gps_speed {
    type: number
    sql: ${TABLE}.gps_speed ;;
  }

  dimension: iat {
    type: number
    sql: ${TABLE}.iat ;;
  }

  dimension: imap {
    type: number
    sql: ${TABLE}.imap ;;
  }

  dimension: kpl {
    type: number
    sql: ${TABLE}.kpl ;;
  }

  dimension: maf {
    type: number
    sql: ${TABLE}.maf ;;
  }

  dimension: rpm {
    type: number
    sql: ${TABLE}.rpm ;;
  }

  dimension: speed {
    type: number
    sql: ${TABLE}.speed ;;
  }

  dimension: t_adv {
    type: number
    sql: ${TABLE}.tAdv ;;
  }

  dimension: t_pos {
    type: number
    sql: ${TABLE}.tPos ;;
  }

  dimension: vin {
    type: string
    sql: ${TABLE}.vin ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
