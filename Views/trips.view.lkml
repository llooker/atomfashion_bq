view: trips {
  sql_table_name: `looker-private-demo.traffic_events.trips`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: randomize {
    type: number
    sql: RAND() ;;
  }

  dimension: current_trip_battery_health_score {
    type: number
    sql: ${TABLE}.currentTripBatteryHealthScore ;;
  }

  dimension: current_trip_brake_wear_score {
    type: number
    sql: ${TABLE}.currentTripBrakeWearScore ;;
  }

  dimension: current_trip_harsh_acceleration_score {
    type: number
    sql: ${TABLE}.currentTripHarshAccelerationScore ;;
  }

  dimension: current_trip_harsh_cornering_score {
    type: number
    sql: ${TABLE}.currentTripHarshCorneringScore ;;
  }

  dimension: driver_id {
    type: string
    sql: ${TABLE}.driverId ;;
  }

  dimension_group: expected_end {
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
    datatype: datetime
    sql: ${TABLE}.expectedEndTime ;;
  }

  dimension: load_weight {
    type: number
    sql: ${TABLE}.loadWeight ;;
  }

  dimension: location_end_id {
    type: number
    sql: ${TABLE}.locationEndId ;;
  }

  dimension: location_start_id {
    type: number
    sql: ${TABLE}.locationStartId ;;
  }

  dimension: region_id {
    type: number
    sql: ${TABLE}.regionId ;;
  }

  dimension_group: start {
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
    datatype: datetime
    sql: ${TABLE}.startTime ;;
  }

  dimension: tire_pressure_rating_pre_trip {
    type: number
    sql: ${TABLE}.tirePressureRatingPreTrip ;;
  }

  measure: tire_pressure_rating_pre_trip_agg {
    type: average
    sql: ${tire_pressure_rating_pre_trip} ;;
  }

  dimension: total_trips {
    type: number
    sql: ${TABLE}.totalTrips ;;
  }

  dimension: trip_buckets {
    type: string
    sql: CASE WHEN ${total_trips} < 400 THEN "Test One"
              WHEN ${total_trips} > 400 AND ${total_trips} < 1000 THEN "Test Two"
              ELSE "Test Three"
         END;;
  }

  dimension: vehicle_id {
    type: string
    sql: ${TABLE}.vehicleId ;;
  }

  measure: count {
    type: count
    drill_fields: [id, trip_pred_brake_failure.count, trip_events.count]
  }
}
