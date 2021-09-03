# The name of this view in Looker is "Encounter Simple"
view: encounter_simple {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-private-demo.healthcare_demo_live.encounter_simple`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: dischare_disposition_display {
    type: string
    sql: ${TABLE}.dischare_disposition_display ;;
  }

  dimension: discharge_disposition_code {
    type: string
    sql: ${TABLE}.discharge_disposition_code ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.end_time ;;
  }

  dimension: organization_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.organization_id ;;
  }

  dimension: patient_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.patient_id;;
  }

  dimension: practitioner_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.practitioner_id ;;
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.reason_code ;;
  }

  dimension: reason_display {
    type: string
    sql: ${TABLE}.reason_display ;;
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
    sql: ${TABLE}.start_time ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type_code {
    type: string
    sql: ${TABLE}.type_code ;;
  }

  dimension: type_display {
    type: string
    sql: ${TABLE}.type_display ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_distinct_patients {
    type: count_distinct
    sql: ${patient_id} ;;
    drill_fields: [patient_id, start_date, status, type_code, type_display]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      practitioner.id,
      practitioner.name,
      patient.id,
      patient.name,
      organization.name,
      organization.part_of__identifier__assigner__identifier__assigner__organization_id
    ]
  }
}
