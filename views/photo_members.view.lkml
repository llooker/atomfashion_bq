view: photo_members {
  sql_table_name: `looker-private-demo.military_surveillance.photo_members`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.COUNT ;;
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

  dimension: photo_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.PHOTO_ID ;;
  }

  # measure: count {
  #   type: count
  #   drill_fields: [id, person.full_name, person.id, photo.id]
  # }
}
