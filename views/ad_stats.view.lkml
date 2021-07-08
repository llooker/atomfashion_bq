view: ad_stats {
  sql_table_name: `looker-private-demo.adwords.ad_stats`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active_view_impressions {
    type: number
    sql: ${TABLE}.active_view_impressions ;;
  }

  dimension: active_view_measurability {
    type: string
    sql: ${TABLE}.active_view_measurability ;;
  }

  dimension: active_view_measurable_cost {
    type: number
    sql: ${TABLE}.active_view_measurable_cost ;;
  }

  dimension: active_view_measurable_impressions {
    type: number
    sql: ${TABLE}.active_view_measurable_impressions ;;
  }

  dimension: active_view_viewability {
    type: string
    sql: ${TABLE}.active_view_viewability ;;
  }

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

  dimension: base_ad_group_id {
    type: number
    sql: ${TABLE}.base_ad_group_id ;;
  }

  dimension: base_campaign_id {
    type: number
    sql: ${TABLE}.base_campaign_id ;;
  }

  dimension: campaign_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
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

  dimension: criterion_id {
    type: number
    sql: ${TABLE}.criterion_id ;;
  }

  dimension: criterion_type {
    type: string
    sql: ${TABLE}.criterion_type ;;
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
      day_of_week,
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

  dimension: is_negative {
    type: yesno
    sql: ${TABLE}.is_negative ;;
  }

  dimension: slot {
    type: string
    sql: ${TABLE}.slot ;;
  }

  dimension: view_through_conversions {
    type: number
    sql: ${TABLE}.view_through_conversions ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_ad_cost {
    type: sum
    sql: ${cost} ;;
    drill_fields: [date_date, device,slot]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      ad_group.bidding_strategy_name,
      ad_group.ad_group_id,
      ad_group.ad_group_name,
      campaign.bidding_strategy_name,
      campaign.campaign_name,
      campaign.campaign_id
    ]
  }
}
