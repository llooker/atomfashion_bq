view: geo_stats {
  sql_table_name: `looker-private-demo.adwords.geo_stats`
    ;;

  dimension: ad_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ad_group_id ;;
  }

  dimension: ad_network_type_1 {
    type: string
    sql: ${TABLE}.ad_network_type_1 ;;
  }

  dimension: ad_network_type_2 {
    type: string
    sql: ${TABLE}.ad_network_type_2 ;;
  }

  dimension: average_position {
    type: number
    sql: ${TABLE}.average_position ;;
  }

  dimension: campaign_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: city_criteria_id {
    type: string
    sql: ${TABLE}.city_criteria_id ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: conversion_value {
    type: number
    sql: ${TABLE}.conversion_value ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension: country_criteria_id {
    type: string
    sql: ${TABLE}.country_criteria_id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.external_customer_id ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: interaction_types {
    type: string
    sql: ${TABLE}.interaction_types ;;
  }

  dimension: interactions {
    type: number
    sql: ${TABLE}.interactions ;;
  }

  dimension: is_targeting_location {
    type: yesno
    sql: ${TABLE}.is_targeting_location ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.location_type ;;
  }

  dimension: metro_criteria_id {
    type: string
    sql: ${TABLE}.metro_criteria_id ;;
  }

  dimension: most_specific_criteria_id {
    type: string
    sql: ${TABLE}.most_specific_criteria_id ;;
  }

  dimension: region_criteria_id {
    type: string
    sql: ${TABLE}.region_criteria_id ;;
  }

  dimension: view_through_conversions {
    type: number
    sql: ${TABLE}.view_through_conversions ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      ad_group.bidding_strategy_name,
      ad_group.ad_group_id,
      ad_group.ad_group_name,
      campaign.bidding_strategy_name,
      campaign.campaign_name,
      campaign.campaign_id
    ]
  }
}
