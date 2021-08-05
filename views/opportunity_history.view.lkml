# The name of this view in Looker is "Opportunity History"
view: opportunity_history {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-private-demo.salesforce.opportunity_history`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount" in Explore.

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: close {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CLOSE_DATE ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CREATED_DATE ;;
  }

  dimension: forecast_category {
    type: string
    sql: ${TABLE}.FORECAST_CATEGORY ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IS_DELETED ;;
  }

  dimension: opportunity_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.OPPORTUNITY_ID ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}.PROBABILITY ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}.STAGE_NAME ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [id, stage_name, opportunity.forecast_category_name, opportunity.stage_name, opportunity.id]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_amount {
    type: sum
    hidden: yes
    sql: ${amount} ;;
  }

  measure: average_amount {
    type: average
    hidden: yes
    sql: ${amount} ;;
  }

  measure: total_probability {
    type: sum
    hidden: yes
    sql: ${probability} ;;
  }

  measure: average_probability {
    type: average
    hidden: yes
    sql: ${probability} ;;
  }
}
