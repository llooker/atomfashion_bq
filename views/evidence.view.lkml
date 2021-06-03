view: evidence {
  sql_table_name: `looker-private-demo.military_surveillance.evidence`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: evidence_type {
    type: string
    sql: ${TABLE}.EVIDENCE_TYPE ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.FILE_NAME ;;
  }

  dimension: file_type {
    type: string
    sql: ${TABLE}.FILE_TYPE ;;
  }

  dimension: person_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PERSON_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, file_name, person.full_name, person.id]
  }
}
