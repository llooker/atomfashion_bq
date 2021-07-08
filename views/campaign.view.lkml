view: campaign {
  sql_table_name: `looker-private-demo.adwords.campaign`
    ;;
  drill_fields: [campaign_id]

  dimension: campaign_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: advertising_channel_sub_type {
    type: string
    sql: ${TABLE}.advertising_channel_sub_type ;;
  }

  dimension: advertising_channel_type {
    type: string
    sql: ${TABLE}.advertising_channel_type ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: bid_type {
    type: string
    sql: ${TABLE}.bid_type ;;
  }

  dimension: bidding_strategy_id {
    type: number
    sql: ${TABLE}.bidding_strategy_id ;;
  }

  dimension: bidding_strategy_name {
    type: string
    sql: ${TABLE}.bidding_strategy_name ;;
  }

  dimension: bidding_strategy_type {
    type: string
    sql: ${TABLE}.bidding_strategy_type ;;
  }

  dimension: budget_id {
    type: number
    sql: ${TABLE}.budget_id ;;
  }

  dimension: campaign_desktop_bid_modifier {
    type: string
    sql: ${TABLE}.campaign_desktop_bid_modifier ;;
  }

  dimension: campaign_group_id {
    type: number
    sql: ${TABLE}.campaign_group_id ;;
  }

  dimension: campaign_mobile_bid_modifier {
    type: string
    sql: ${TABLE}.campaign_mobile_bid_modifier ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  dimension: campaign_status {
    type: string
    sql: ${TABLE}.campaign_status ;;
  }

  dimension: campaign_tablet_bid_modifier {
    type: string
    sql: ${TABLE}.campaign_tablet_bid_modifier ;;
  }

  dimension: campaign_trial_type {
    type: string
    sql: ${TABLE}.campaign_trial_type ;;
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

  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
  }

  dimension: enhanced_cpc_enabled {
    type: yesno
    sql: ${TABLE}.enhanced_cpc_enabled ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.external_customer_id ;;
  }

  dimension: is_budget_explicitly_shared {
    type: yesno
    sql: ${TABLE}.is_budget_explicitly_shared ;;
  }

  dimension: label_ids {
    type: string
    sql: ${TABLE}.label_ids ;;
  }

  dimension: labels {
    type: string
    sql: ${TABLE}.labels ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.period ;;
  }

  dimension: serving_status {
    type: string
    sql: ${TABLE}.serving_status ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  dimension: tracking_url_template {
    type: string
    sql: ${TABLE}.tracking_url_template ;;
  }

  dimension: url_custom_parameters {
    type: string
    sql: ${TABLE}.url_custom_parameters ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      campaign_id,
      bidding_strategy_name,
      campaign_name,
      ad.count,
      ad_stats.count,
      ad_group_stats.count,
      keyword.count,
      ad_group.count,
      geo_stats.count
    ]
  }
}
