view: autotelemetry {
  sql_table_name: `looker-private-demo.automotive_customer_360.autotelemetry`
    ;;

  dimension: acc_data {
    type: string
    sql: ${TABLE}.accData ;;
  }

  dimension: random {
    type: number
    sql: RAND() ;;
  }

  dimension: battery {
    type: number
    sql: ${TABLE}.battery ;;
  }

  dimension: battery_predicted {
    type: number
    sql: ${TABLE}.battery - (CASE WHEN RAND() > 0.5 THEN RAND() * -2000 ELSE RAND() * 2000 END);;
  }

  dimension: c_temp {
    type: number
    sql: ${TABLE}.cTemp ;;
  }

  dimension: device_id {
    type: number
    sql: ${TABLE}.deviceId ;;
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

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      time_of_day,
      hour_of_day,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: trip_id {
    type: number
    sql: ${TABLE}.tripID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
