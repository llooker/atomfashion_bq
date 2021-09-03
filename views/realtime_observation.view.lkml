# The name of this view in Looker is "Realtime Observation"
view: realtime_observation {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-private-demo.healthcare_demo_live.realtime_observation`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: category_code {
    type: string
    sql: ${TABLE}.category_code ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;
  }

  dimension: device_manufacturer {
    type: string
    sql: ${TABLE}.device_manufacturer ;;
  }

  dimension: encounter_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.encounter_id ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: issued {
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
    sql: ${TABLE}.issued ;;
  }

  dimension: observation_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.observation_id ;;
  }

  dimension: organization_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.organization_id ;;
  }

  dimension: patient_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.patient_id ;;
  }

  dimension: practitioner_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.practitioner_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: system_management_tool {
    type: string
    sql: ${TABLE}.system_management_tool ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.unit ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_quantity {
    type: sum
    hidden: yes
    sql: ${quantity} ;;
  }

  measure: average_quantity {
    type: average
    hidden: yes
    sql: ${quantity} ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      practitioner.id,
      practitioner.name,
      observation.id,
      patient.id,
      patient.name,
      organization.name,
      organization.part_of__identifier__assigner__identifier__assigner__organization_id,
      encounter.part_of__encounter_id
    ]
  }
}
