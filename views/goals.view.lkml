view: goals {
  sql_table_name: `looker-private-demo.salesforce.goals`
    ;;
  drill_fields: [goal_id]

  dimension: goal_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Goal_ID ;;
  }

  dimension: _inside_bookings_ {
    type: number
    sql: ${TABLE}._Inside_Bookings_ ;;
  }

  dimension: _inside_east_bookings_ {
    type: number
    sql: ${TABLE}._Inside_East_Bookings_ ;;
  }

  dimension: _inside_emea_bookings_ {
    type: number
    sql: ${TABLE}._Inside_EMEA_Bookings_ ;;
  }

  dimension: _inside_west_bookings_ {
    type: number
    sql: ${TABLE}._Inside_West_Bookings_ ;;
  }

  dimension: _outside_bookings_ {
    type: number
    sql: ${TABLE}._Outside_Bookings_ ;;
  }

  dimension: _outside_east_bookings_ {
    type: number
    sql: ${TABLE}._Outside_East_Bookings_ ;;
  }

  dimension: _outside_emea_bookings_ {
    type: number
    sql: ${TABLE}._Outside_EMEA_Bookings_ ;;
  }

  dimension: _outside_west_bookings_ {
    type: number
    sql: ${TABLE}._Outside_West_Bookings_ ;;
  }

  dimension: _total_bookings_ {
    type: number
    sql: ${TABLE}._Total_Bookings_ ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.Quarter ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [goal_id]
  }
}
