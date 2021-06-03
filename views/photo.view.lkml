view: photo {
  sql_table_name: `looker-private-demo.military_surveillance.photo`
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

  dimension: diff_from_long {
    type: number
    sql: ${TABLE}.DIFF_FROM_LONG ;;
  }

  dimension: person_latitude {
    type: number
    sql: ${TABLE}.PERSON_LATITUDE ;;
  }

  dimension: person_longitude {
    type: number
    sql: ${TABLE}.PERSON_LONGITUDE ;;
  }

  dimension: phone_owner {
    type: number
    sql: ${TABLE}.PHONE_OWNER ;;
  }

  measure: count {
    type: count
    drill_fields: [id, photo_members.count]
  }
}
