view: ad_group {
  sql_table_name: `looker-private-demo.adwords.ad_group`
    ;;
  drill_fields: [ad_group_id]

  dimension: ad_group_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ad_group_id ;;
  }

  dimension: ad_group_desktop_bid_modifier {
    type: string
    sql: ${TABLE}.ad_group_desktop_bid_modifier ;;
  }

  dimension: ad_group_name {
    type: string
    sql: ${TABLE}.ad_group_name ;;
  }

  dimension: ad_group_status {
    type: string
    sql: ${TABLE}.ad_group_status ;;
  }

  dimension: ad_group_tablet_bid_modifier {
    type: string
    sql: ${TABLE}.ad_group_tablet_bid_modifier ;;
  }

  dimension: ad_group_type {
    type: string
    sql: ${TABLE}.ad_group_type ;;
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

  dimension: bidding_strategy_source {
    type: string
    sql: ${TABLE}.bidding_strategy_source ;;
  }

  dimension: bidding_strategy_type {
    type: string
    sql: ${TABLE}.bidding_strategy_type ;;
  }

  dimension: campaign_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: content_bid_criterion_type_group {
    type: string
    sql: ${TABLE}.content_bid_criterion_type_group ;;
  }

  dimension: cpc_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.cpc_bid ;;
  }

  dimension: cpv_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.cpv_bid ;;
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

  dimension: effective_target_roas {
    type: string
    sql: ${TABLE}.effective_target_roas ;;
  }

  dimension: effective_target_roas_source {
    type: string
    sql: ${TABLE}.effective_target_roas_source ;;
  }

  dimension: enhanced_cpc_enabled {
    type: yesno
    sql: ${TABLE}.enhanced_cpc_enabled ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.external_customer_id ;;
  }

  dimension: label_ids {
    type: string
    sql: ${TABLE}.label_ids ;;
  }

  dimension: labels {
    type: string
    sql: ${TABLE}.labels ;;
  }

  dimension: target_cpa {
    type: number
    sql: ${TABLE}.target_cpa ;;
  }

  dimension: target_cpa_bid_source {
    type: string
    sql: ${TABLE}.target_cpa_bid_source ;;
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
      ad_group_id,
      bidding_strategy_name,
      ad_group_name,
      campaign.bidding_strategy_name,
      campaign.campaign_name,
      campaign.campaign_id,
      ad.count,
      ad_stats.count,
      ad_group_stats.count,
      keyword.count,
      geo_stats.count
    ]
  }
}
