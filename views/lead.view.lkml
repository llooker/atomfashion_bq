view: lead {
  sql_table_name: `looker-private-demo.salesforce.lead`
    ;;
  drill_fields: [lead_id]

  dimension: lead_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.lead_id ;;
  }

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

  measure: count {
    type: count
    drill_fields: [lead_id, last_name, first_name, campaign_member.count]
  }
}