view: social_media {
  sql_table_name: `looker-private-demo.military_surveillance.social_media`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: post {
    type: string
    sql: ${TABLE}.post ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
