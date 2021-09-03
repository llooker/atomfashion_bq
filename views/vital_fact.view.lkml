# The name of this view in Looker is "Vital Fact"
view: vital_fact {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-private-demo.healthcare_demo_live.vital_fact`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Average" in Explore.

  dimension: average {
    type: number
    sql: ${TABLE}.average ;;
  }

  dimension: sd {
    type: number
    sql: ${TABLE}.sd ;;
  }

  dimension: vital {
    type: string
    sql: ${TABLE}.vital ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: []
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_average {
    type: sum
    hidden: yes
    sql: ${average} ;;
  }

  measure: average_average {
    type: average
    hidden: yes
    sql: ${average} ;;
  }

  measure: total_sd {
    type: sum
    hidden: yes
    sql: ${sd} ;;
  }

  measure: average_sd {
    type: average
    hidden: yes
    sql: ${sd} ;;
  }
}
