view: parts {
  sql_table_name: `looker-private-demo.automotive_customer_360.parts`
    ;;

  dimension: component_ {
    type: string
    sql: ${TABLE}.Component_ ;;
  }

  dimension: component_id {
    type: number
    sql: ${TABLE}.Component_Id ;;
  }

  dimension: component_type {
    type: string
    sql: ${TABLE}.Component_Type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
