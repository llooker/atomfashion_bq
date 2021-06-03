view: status {
  sql_table_name: `looker-private-demo.military_surveillance.status`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: days_old {
    type: number
    sql: ${TABLE}.DAYS_OLD ;;
  }

  dimension: modality {
    type: string
    sql: ${TABLE}.MODALITY ;;
  }

  dimension: modality_id {
    type: number
    sql: ${TABLE}.MODALITY_ID ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PERSON_ID ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  measure: count {
    type: count
    drill_fields: [id, person.full_name, person.id]
  }
}
