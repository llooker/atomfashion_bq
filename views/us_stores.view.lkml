# The name of this view in Looker is "Us Stores"
view: us_stores {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-private-demo.retail.us_stores`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Latitude" in Explore.

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: sq_ft {
    type: number
    sql: ${TABLE}.Sq_Ft ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [id, name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_latitude {
    type: sum
    hidden: yes
    sql: ${latitude} ;;
  }

  measure: average_latitude {
    type: average
    hidden: yes
    sql: ${latitude} ;;
  }

  measure: total_longitude {
    type: sum
    hidden: yes
    sql: ${longitude} ;;
  }

  measure: average_longitude {
    type: average
    hidden: yes
    sql: ${longitude} ;;
  }

  measure: total_sq_ft {
    type: sum
    hidden: yes
    sql: ${sq_ft} ;;
  }

  measure: average_sq_ft {
    type: average
    hidden: yes
    sql: ${sq_ft} ;;
  }
}
