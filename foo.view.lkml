view: foo {
  sql_table_name: ecomm.foo ;;

  dimension: i {
    type: number
    sql: ${TABLE}.i ;;
  }

  measure: count {
    type: count
  }
}
