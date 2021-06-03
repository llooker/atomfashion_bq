view: event {
  sql_table_name: `looker-private-demo.military_surveillance.event`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: people_killed {
    type: number
    sql: ${TABLE}.people_killed ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
