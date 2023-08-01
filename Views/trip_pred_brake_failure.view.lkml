view: trip_pred_brake_failure {
  sql_table_name: `looker-private-demo.traffic_events.tripPredBrakeFailure`
    ;;

  dimension: predicted_brake_failure_estimate {
    type: number
    description: "Predicted chance of the brakes failing on this trip, between 0 (min) to 1.0 (max)"
    sql: ${TABLE}.predictedBrakeFailureEstimate ;;
  }

  dimension: trip_id {
    type: string
    description: "ID (string) for associated trip"
    # hidden: yes
    sql: ${TABLE}.tripId ;;
  }

  measure: count {
    type: count
    drill_fields: [trips.id]
  }
}
