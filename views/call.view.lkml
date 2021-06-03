view: call {
  sql_table_name: `looker-private-demo.military_surveillance.call`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DATE ;;
  }

  dimension: diff_from_lat {
    type: number
    sql: ${TABLE}.DIFF_FROM_LAT ;;
  }

  dimension: diff_from_lat_out {
    type: number
    sql: ${TABLE}.DIFF_FROM_LAT_OUT ;;
  }

  dimension: diff_from_long {
    type: number
    sql: ${TABLE}.DIFF_FROM_LONG ;;
  }

  dimension: diff_from_long_out {
    type: number
    sql: ${TABLE}.DIFF_FROM_LONG_OUT ;;
  }

  dimension: duration {
    type: number
    sql: ${TABLE}.DURATION ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PERSON_ID ;;
  }

  dimension: person_id_out {
    type: number
    value_format_name: id
    sql: ${TABLE}.PERSON_ID_OUT ;;
  }

  dimension: person_latitude {
    type: number
    sql: ${TABLE}.PERSON_LATITUDE ;;
  }

  dimension: person_latitude_out {
    type: number
    sql: ${TABLE}.PERSON_LATITUDE_OUT ;;
  }

  dimension: person_longitude {
    type: number
    sql: ${TABLE}.PERSON_LONGITUDE ;;
  }

  dimension: person_longitude_out {
    type: number
    sql: ${TABLE}.PERSON_LONGITUDE_OUT ;;
  }

  measure: average_call_duration {
    type: average
    sql: ${duration} ;;
    drill_fields: [id, person_id, diff_from_lat, person_id]
  }

  measure: count {
    type: count
    drill_fields: [id, person.full_name, person.id]
  }
}
