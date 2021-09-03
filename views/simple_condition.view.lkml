# The name of this view in Looker is "Simple Condition"
view: simple_condition {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-private-demo.healthcare_demo_live.simple_condition`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Condition Category Coding Code" in Explore.

  dimension: condition__category__coding_code {
    type: string
    sql: ${TABLE}.condition__category__coding_code ;;
  }

  dimension: condition__category__coding_display {
    type: string
    sql: ${TABLE}.condition__category__coding_display ;;
  }

  dimension: condition__code__coding_code {
    type: string
    sql: ${TABLE}.condition__code__coding_code ;;
  }

  dimension: condition__code__coding_display {
    type: string
    sql: ${TABLE}.condition__code__coding_display ;;
  }

  dimension: condition_clinical_status {
    type: string
    sql: ${TABLE}.condition_clinical_status ;;
  }

  dimension: condition_context__encounterid_1 {
    type: string
    sql: ${TABLE}.condition_context__encounterid_1 ;;
  }

  dimension: condition_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.condition_id ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: condition_onset {
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
    sql: ${TABLE}.condition_onset_time ;;
  }

  dimension: condition_subject__patient_id {
    type: string
    sql: ${TABLE}.condition_subject__patient_id ;;
  }

  dimension: condition_verification_status {
    type: string
    sql: ${TABLE}.condition_verification_status ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [condition.id]
  }
}

# These sum and average measures are hidden by default.
# If you want them to show up in your explore, remove hidden: yes.
