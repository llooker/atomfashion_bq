view: trip_pred_driver_safety {
  sql_table_name: `looker-private-demo.traffic_events.tripPredDriverSafety`
    ;;

  dimension: avgtripmaxspeed {
    type: number
    sql: ${TABLE}.avgtripmaxspeed ;;
  }

  dimension: avgtripvarspeed {
    type: number
    sql: ${TABLE}.avgtripvarspeed ;;
  }

  dimension: ct_trips {
    type: number
    sql: ${TABLE}.ct_trips ;;
  }

  dimension: driver_id {
    type: string
    sql: ${TABLE}.driverId ;;
  }

  dimension: driver_safety_rating {
    type: number
    sql: ${TABLE}.driverSafetyRating ;;
  }

  dimension: maxtripmaxspeed {
    type: number
    sql: ${TABLE}.maxtripmaxspeed ;;
  }

  dimension: maxtripvarspeed {
    type: number
    sql: ${TABLE}.maxtripvarspeed ;;
  }

  dimension: mintripvarspeed {
    type: number
    sql: ${TABLE}.mintripvarspeed ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
