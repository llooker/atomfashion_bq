# The name of this view in Looker is "Locations"
view: locations {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-private-demo.netsuite_accounting.locations`
    ;;
  drill_fields: [location_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: location_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.location_id ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _fivetran_synced {
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
    sql: ${TABLE}._fivetran_synced ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address" in Explore.

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: address_one {
    type: string
    sql: ${TABLE}.address_one ;;
  }

  dimension: address_three {
    type: string
    sql: ${TABLE}.address_three ;;
  }

  dimension: address_two {
    type: string
    sql: ${TABLE}.address_two ;;
  }

  dimension: addressee {
    type: string
    sql: ${TABLE}.addressee ;;
  }

  dimension: attention {
    type: string
    sql: ${TABLE}.attention ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: date_last_modified {
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
    sql: ${TABLE}.date_last_modified ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.full_name ;;
  }

  dimension: inventory_available {
    type: string
    sql: ${TABLE}.inventory_available ;;
  }

  dimension: inventory_available_web_store {
    type: string
    sql: ${TABLE}.inventory_available_web_store ;;
  }

  dimension: is_include_in_supply_planning {
    type: string
    sql: ${TABLE}.is_include_in_supply_planning ;;
  }

  dimension: isinactive {
    type: string
    sql: ${TABLE}.isinactive ;;
  }

  dimension: location_extid {
    type: string
    sql: ${TABLE}.location_extid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: return_address_one {
    type: string
    sql: ${TABLE}.return_address_one ;;
  }

  dimension: return_address_two {
    type: string
    sql: ${TABLE}.return_address_two ;;
  }

  dimension: return_city {
    type: string
    sql: ${TABLE}.return_city ;;
  }

  dimension: return_country {
    type: string
    sql: ${TABLE}.return_country ;;
  }

  dimension: return_state {
    type: string
    sql: ${TABLE}.return_state ;;
  }

  dimension: return_zipcode {
    type: number
    sql: ${TABLE}.return_zipcode ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_return_zipcode {
    type: sum
    sql: ${return_zipcode} ;;
  }

  measure: average_return_zipcode {
    type: average
    sql: ${return_zipcode} ;;
  }

  dimension: returnaddress {
    type: string
    sql: ${TABLE}.returnaddress ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: tran_num_prefix {
    type: string
    sql: ${TABLE}.tran_num_prefix ;;
  }

  dimension: use_bins {
    type: string
    sql: ${TABLE}.use_bins ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: [location_id, full_name, name, transactions.count]
  }
}
