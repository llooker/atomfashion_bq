# The name of this view in Looker is "Product"
view: product {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-private-demo.salesforce.product`
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
  # This dimension will be called "Commission Family C" in Explore.

  dimension: commission_family_c {
    type: string
    sql: ${TABLE}.COMMISSION_FAMILY_C ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}.CREATED_BY_ID ;;
  }

  dimension: family {
    type: string
    sql: ${TABLE}.FAMILY ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.IS_ACTIVE ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IS_DELETED ;;
  }

  dimension: list_price {
    type: number
    sql: ${TABLE}.list_price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_list_price {
    type: sum
    sql: ${list_price} ;;
  }

  measure: average_list_price {
    type: average
    sql: ${list_price} ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: product__type___c {
    type: string
    sql: ${TABLE}.PRODUCT__TYPE___C ;;
  }

  dimension: user_type_c {
    type: yesno
    sql: ${TABLE}.USER_TYPE_C ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
