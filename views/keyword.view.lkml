view: keyword {
  sql_table_name: `looker-private-demo.adwords.keyword`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ad_group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ad_group_id ;;
  }

  dimension: approval_status {
    type: string
    sql: ${TABLE}.approval_status ;;
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

  dimension: cpc_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.cpc_bid ;;
  }

  dimension: cpc_bid_source {
    type: string
    sql: ${TABLE}.cpc_bid_source ;;
  }

  dimension: creative_quality_score {
    type: string
    sql: ${TABLE}.creative_quality_score ;;
  }

  dimension: criteria {
    type: string
    sql: ${TABLE}.criteria ;;
  }

  dimension: criteria_destination_url {
    type: string
    sql: ${TABLE}.criteria_destination_url ;;
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

  dimension: enhanced_cpc_enabled {
    type: yesno
    sql: ${TABLE}.enhanced_cpc_enabled ;;
  }

  dimension: estimated_add_clicks_at_first_position_cpc {
    type: string
    sql: ${TABLE}.estimated_add_clicks_at_first_position_cpc ;;
  }

  dimension: estimated_add_cost_at_first_position_cpc {
    type: number
    sql: ${TABLE}.estimated_add_cost_at_first_position_cpc ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.external_customer_id ;;
  }

  dimension: final_app_urls {
    type: string
    sql: ${TABLE}.final_app_urls ;;
  }

  dimension: final_mobile_urls {
    type: string
    sql: ${TABLE}.final_mobile_urls ;;
  }

  dimension: final_urls {
    type: string
    sql: ${TABLE}.final_urls ;;
  }

  dimension: first_page_cpc {
    type: number
    sql: ${TABLE}.first_page_cpc ;;
  }

  dimension: first_position_cpc {
    type: number
    sql: ${TABLE}.first_position_cpc ;;
  }

  dimension: has_quality_score {
    type: yesno
    sql: ${TABLE}.has_quality_score ;;
  }

  dimension: is_negative {
    type: yesno
    sql: ${TABLE}.is_negative ;;
  }

  dimension: keyword_match_type {
    type: string
    sql: ${TABLE}.keyword_match_type ;;
  }

  dimension: label_ids {
    type: string
    sql: ${TABLE}.label_ids ;;
  }

  dimension: labels {
    type: string
    sql: ${TABLE}.labels ;;
  }

  dimension: post_click_quality_score {
    type: string
    sql: ${TABLE}.post_click_quality_score ;;
  }

  dimension: quality_score {
    type: string
    sql: ${TABLE}.quality_score ;;
  }

  dimension: search_predicted_ctr {
    type: string
    sql: ${TABLE}.search_predicted_ctr ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: system_serving_status {
    type: string
    sql: ${TABLE}.system_serving_status ;;
  }

  dimension: top_of_page_cpc {
    type: number
    sql: ${TABLE}.top_of_page_cpc ;;
  }

  dimension: tracking_url_template {
    type: string
    sql: ${TABLE}.tracking_url_template ;;
  }

  dimension: url_custom_parameters {
    type: string
    sql: ${TABLE}.url_custom_parameters ;;
  }

  dimension: vertical_id {
    type: number
    sql: ${TABLE}.vertical_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      bidding_strategy_name,
      ad_group.bidding_strategy_name,
      ad_group.ad_group_id,
      ad_group.ad_group_name,
      campaign.bidding_strategy_name,
      campaign.campaign_name,
      campaign.campaign_id
    ]
  }
}
