# The name of this view in Looker is "Contact"
view: contact {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-private-demo.salesforce.contact`
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
  # This dimension will be called "Account ID" in Explore.

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}.CREATED_BY_ID ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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

  dimension_group: customer_start_date_c {
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
    sql: ${TABLE}.CUSTOMER_START_DATE_C ;;
  }

  dimension: department__picklist___c {
    type: string
    sql: ${TABLE}.DEPARTMENT__PICKLIST___C ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }

  dimension: grouping___c {
    type: string
    sql: ${TABLE}.GROUPING___C ;;
  }

  dimension: inactive_c {
    type: yesno
    sql: ${TABLE}.INACTIVE_C ;;
  }

  dimension: intro__meeting___c {
    type: yesno
    sql: ${TABLE}.INTRO__MEETING___C ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IS_DELETED ;;
  }

  dimension_group: jumpstart_nps_feedback_date_received_c {
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
    sql: ${TABLE}.JUMPSTART_NPS_FEEDBACK_DATE_RECEIVED_C ;;
  }

  dimension: jumpstart_nps_score_c {
    type: number
    sql: ${TABLE}.JUMPSTART_NPS_SCORE_C ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}.LEAD_SOURCE ;;
  }

  dimension: looker_active_user_c {
    type: yesno
    sql: ${TABLE}.LOOKER_ACTIVE_USER_C ;;
  }

  dimension: looker_uuid_c {
    type: string
    sql: ${TABLE}.LOOKER_UUID_C ;;
  }

  dimension_group: nps_feedback_date_received_c {
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
    sql: ${TABLE}.NPS_FEEDBACK_DATE_RECEIVED_C ;;
  }

  dimension: nps_score_c {
    type: number
    sql: ${TABLE}.NPS_SCORE_C ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.OWNER_ID ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.PHONE ;;
  }

  dimension: primary__contact___c {
    type: yesno
    sql: ${TABLE}.PRIMARY__CONTACT___C ;;
  }

  dimension: processing_status_c {
    type: string
    sql: ${TABLE}.PROCESSING_STATUS_C ;;
  }

  dimension: territory___c {
    type: string
    sql: ${TABLE}.TERRITORY___C ;;
  }

  dimension: zendesk___zendesk__id___c {
    type: string
    sql: ${TABLE}.ZENDESK___ZENDESK__ID___C ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [id, last_name, first_name, account.id, account.name]
  }

  # These sum and average measures are hidden by default.
  # If you want them to show up in your explore, remove hidden: yes.

  measure: total_jumpstart_nps_score_c {
    type: sum
    hidden: yes
    sql: ${jumpstart_nps_score_c} ;;
  }

  measure: average_jumpstart_nps_score_c {
    type: average
    hidden: yes
    sql: ${jumpstart_nps_score_c} ;;
  }

  measure: total_nps_score_c {
    type: sum
    hidden: yes
    sql: ${nps_score_c} ;;
  }

  measure: average_nps_score_c {
    type: average
    hidden: yes
    sql: ${nps_score_c} ;;
  }
}
