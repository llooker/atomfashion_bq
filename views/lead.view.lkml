# The name of this view in Looker is "Lead"
view: lead {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-private-demo.salesforce.lead`
    ;;
  drill_fields: [lead_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: lead_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.lead_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Called C" in Explore.

  dimension: called_c {
    type: yesno
    sql: ${TABLE}.CALLED_C ;;
  }

  dimension: company__type___c {
    type: string
    sql: ${TABLE}.COMPANY__TYPE___C ;;
  }

  dimension: converted_account_id {
    type: string
    sql: ${TABLE}.CONVERTED_ACCOUNT_ID ;;
  }

  dimension: converted_contact_id {
    type: string
    sql: ${TABLE}.CONVERTED_CONTACT_ID ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: converted {
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
    sql: ${TABLE}.CONVERTED_DATE ;;
  }

  dimension: converted_opportunity_id {
    type: string
    sql: ${TABLE}.CONVERTED_OPPORTUNITY_ID ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
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

  dimension: department___c {
    type: string
    sql: ${TABLE}.DEPARTMENT___C ;;
  }

  dimension: disqualified__reason___c {
    type: string
    sql: ${TABLE}.DISQUALIFIED__REASON___C ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }

  dimension: intro__meeting___c {
    type: yesno
    sql: ${TABLE}.INTRO__MEETING___C ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IS_DELETED ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
  }

  dimension: lead__processing__status___c {
    type: string
    sql: ${TABLE}.LEAD__PROCESSING__STATUS___C ;;
  }

  dimension: lead_score_name_c {
    type: string
    sql: ${TABLE}.LEAD_SCORE_NAME_C ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}.LEAD_SOURCE ;;
  }

  dimension: lead_territory_c {
    type: string
    sql: ${TABLE}.LEAD_TERRITORY_C ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OWNER_ID ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.PHONE ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.POSTAL_CODE ;;
  }

  dimension: sdr__assigned___c {
    type: string
    sql: ${TABLE}.SDR__ASSIGNED___C ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: territory___c {
    type: string
    sql: ${TABLE}.TERRITORY___C ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [lead_id, last_name, first_name]
  }
}

# These sum and average measures are hidden by default.
# If you want them to show up in your explore, remove hidden: yes.
