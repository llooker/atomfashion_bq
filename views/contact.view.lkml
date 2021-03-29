view: contact {
  sql_table_name: `looker-private-demo.salesforce.contact`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: account_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ACCOUNT_ID ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}.CREATED_BY_ID ;;
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

  measure: count {
    type: count
    drill_fields: [id, last_name, first_name, account.id, account.name]
  }
}
