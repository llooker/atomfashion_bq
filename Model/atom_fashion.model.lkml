connection: "snowflake"
label: "Atom Fashion"

# include all the views
include: "/*.view"
include: "/Dashboards/*.dashboard"

# include all the dashboards
# include: "*.dashboard"

named_value_format: big_money {
  value_format: "[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$0.00"
}

datagroup: ecommerce_etl {
  sql_trigger: SELECT max(completed_at) FROM ecomm.etl_jobs ;;
  max_cache_age: "24 hours"}

persist_with: ecommerce_etl

########################################
############## Base Explores ###########
########################################

explore: order_items {
  label: "(1) Order Information"
  description: "All information related to Orders placed including shipping information, user facts, and product information"
  view_name: order_items
#   access_filter_fields: [products.brand]
  access_filter: {
    field: products.brand
    user_attribute: brand
  }

  join: order_facts {
    view_label: "Orders"
    relationship: many_to_one
    sql_on: ${order_facts.order_id} = ${order_items.order_id} ;;
  }

  join: inventory_items {
    #Left Join only brings in items that have been sold as order_item
    type: full_outer
    relationship: one_to_one
    sql_on: ${inventory_items.id} = ${order_items.inventory_item_id} ;;
  }

  join: users {
    relationship: many_to_one
    sql_on: ${order_items.user_id} = ${users.id} ;;
  }

  join: city_sales_tax {
    type: inner
    sql_on: ${users.city} = ${city_sales_tax.city}
          AND ${users.state} = ${city_sales_tax.state}
          AND ${users.country} = ${city_sales_tax.country}
      ;;
    relationship: many_to_many
  }

  join: user_order_facts {
    view_label: "Users"
    relationship: many_to_one
    sql_on: ${user_order_facts.user_id} = ${order_items.user_id} ;;
  }

  join: products {
    relationship: many_to_one
    sql_on: ${products.id} = ${inventory_items.product_id} ;;
  }

  join: repeat_purchase_facts {
    relationship: many_to_one
    type: full_outer
    sql_on: ${order_items.order_id} = ${repeat_purchase_facts.order_id} ;;
  }

  join: distribution_centers {
    type: left_outer
    sql_on: ${distribution_centers.id} = ${inventory_items.product_distribution_center_id} ;;
    relationship: many_to_one
  }

  join: best_day_ever {
    view_label: "Order Items"
    type: inner
    sql_on: ${order_items.created_date} = ${best_day_ever.created_date} ;;
    relationship: many_to_one
  }
}

explore: projected_revenue {
  label: "(7) Projected Revenue"
  access_filter: {
    field: projected_revenue.brand
    user_attribute: brand
    }
}

explore: products {
  hidden: yes
  label: "Brands"
#   access_filter_fields: [products.brand]
  access_filter: {
    field: products.brand
    user_attribute: brand
  }

  join: brand_user_facts {
    type: left_outer
    relationship: one_to_many
    sql_on: ${products.brand} = ${brand_user_facts.brand} ;;
  }

  join: users {
    type: left_outer
    relationship: one_to_one
    sql_on: ${brand_user_facts.user_id} = ${users.id} ;;
  }

  join: user_order_facts {
    view_label: "Users"
    relationship: many_to_one
    sql_on: ${user_order_facts.user_id} = ${users.id} ;;
  }
}

########################################
######### Embedded Explores #########
########################################



explore: order_items_simple {
  hidden: yes
  label: "Order Items - Explore Embed"
  description: "Simplified information related to Orders placed including shipping information, user facts, and product information"
  view_name: order_items
#   access_filter_fields: [products.brand]
  access_filter: {
    field: products.brand
    user_attribute: brand
  }

  fields: [
    order_items.simple*,
    order_facts.simple*,
    inventory_items.simple*,
    users.simple*,
    user_order_facts.simple*,
    products.simple*
  ]

  join: order_facts {
    view_label: "Orders"
    relationship: many_to_one
    sql_on: ${order_facts.order_id} = ${order_items.order_id} ;;
  }

  join: inventory_items {
    #Left Join only brings in items that have been sold as order_item
    type: full_outer
    relationship: one_to_one
    sql_on: ${inventory_items.id} = ${order_items.inventory_item_id} ;;
  }

  join: users {
    relationship: many_to_one
    sql_on: ${order_items.user_id} = ${users.id} ;;
  }

  join: user_order_facts {
    view_label: "Users"
    relationship: many_to_one
    sql_on: ${user_order_facts.user_id} = ${order_items.user_id} ;;
  }

  join: products {
    relationship: many_to_one
    sql_on: ${products.id} = ${inventory_items.product_id} ;;
  }
}

########################################
#########  Event Data Explores #########
########################################
explore: web_events {
  from: events
  view_name: events
  label: "(2) Web Event Data"
  fields: [ALL_FIELDS*, -sessions.spend_per_session, -sessions.spend_per_purchase, -sessions.weeks_since_campaing_start]
  access_filter: {
    field: product_viewed.brand
    user_attribute: brand
  }

  join: sessions {
    type: left_outer
    sql_on: ${events.session_id} =  ${sessions.session_id} ;;
    relationship: many_to_one
  }

  join: session_landing_page {
    from: events
    type: left_outer
    sql_on: ${sessions.landing_event_id} = ${session_landing_page.event_id} ;;
    fields: [simple_page_info*]
    relationship: one_to_one
  }

  join: session_bounce_page {
    from: events
    type: left_outer
    sql_on: ${sessions.bounce_event_id} = ${session_bounce_page.event_id} ;;
    fields: [simple_page_info*]
    relationship: many_to_one
  }

  join: product_viewed {
    from: products
    type: left_outer
    sql_on: ${events.viewed_product_id} = ${product_viewed.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${sessions.session_user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: user_order_facts {
    type: left_outer
    sql_on: ${users.id} = ${user_order_facts.user_id} ;;
    relationship: one_to_one
    view_label: "Users"
  }
}

explore: web_sessions {
  from: sessions
  view_name: sessions
  label: "(3) Web Session Data"
  fields: [ALL_FIELDS*, -sessions.spend_per_session, -sessions.spend_per_purchase, -sessions.weeks_since_campaing_start]
  access_filter: {
    field: product_viewed.brand
    user_attribute: brand
  }

  join: events {
    type: left_outer
    sql_on: ${sessions.session_id} = ${events.session_id} ;;
    relationship: one_to_many
  }

  join: product_viewed {
    from: products
    type: left_outer
    sql_on: ${events.viewed_product_id} = ${product_viewed.id} ;;
    relationship: many_to_one
  }

  join: session_landing_page {
    from: events
    type: left_outer
    sql_on: ${sessions.landing_event_id} = ${session_landing_page.event_id} ;;
    fields: [session_landing_page.simple_page_info*]
    relationship: one_to_one
  }

  join: session_bounce_page {
    from: events
    type: left_outer
    sql_on: ${sessions.bounce_event_id} = ${session_bounce_page.event_id} ;;
    fields: [session_bounce_page.simple_page_info*]
    relationship: one_to_one
  }

  join: users {
    type: left_outer
    relationship: many_to_one
    sql_on: ${users.id} = ${sessions.session_user_id} ;;
  }

  join: user_order_facts {
    type: left_outer
    relationship: many_to_one
    sql_on: ${user_order_facts.user_id} = ${users.id} ;;
    view_label: "Users"
  }
}

explore: events{
  label:  "(5) Digital Ads - Event Data"
  join: sessions {
    relationship: many_to_one
    sql_on: ${events.session_id} = ${sessions.session_id} ;;
  }
  join: users {
    view_label: "Users"
    relationship: many_to_one
    sql_on: ${sessions.session_user_id} = ${users.id} ;;
  }
  join: user_session_fact {
    view_label: "Users"
    relationship: one_to_one
    sql_on: ${users.id} = ${user_session_fact.session_user_id} ;;
  }

  join: session_purchase_facts {
    relationship: many_to_one
    sql_on: ${sessions.session_user_id} = ${session_purchase_facts.session_user_id}
          and ${sessions.session_start_raw} >= ${session_purchase_facts.last_session_end_raw}
          and ${sessions.session_end_raw} <= ${session_purchase_facts.session_end_raw};;
  }

  join: adevents {
    relationship: one_to_many
    sql_on: ${events.ad_event_id} = ${adevents.adevent_id}
      and ${events.referrer_code} = ${adevents.keyword_id}
      and ${events.is_entry_event}
      ;;
  }
  join: keywords {
    relationship: many_to_one
    sql_on:${keywords.keyword_id} = ${adevents.keyword_id} ;;
  }
  join: adgroups{
    relationship: many_to_one
    sql_on: ${keywords.ad_id} = ${adgroups.ad_id} ;;
  }
  join: campaigns {
    relationship: many_to_one
    sql_on: ${campaigns.campaign_id} = ${adgroups.campaign_id} ;;
    type: full_outer
  }
}



explore: sessions{
  fields: [ALL_FIELDS*, -sessions.funnel_view*]
  label: "(6) Marketing Attribution"
  join: adevents {
    relationship: many_to_one
    sql_on: ${adevents.adevent_id} = ${sessions.ad_event_id} ;;
  }
  join: users {
    view_label: "Users"
    relationship: many_to_one
    sql_on: ${sessions.session_user_id} = ${users.id} ;;
  }
  join: user_session_fact {
    view_label: "Users"
    relationship: one_to_one
    sql_on: ${users.id} = ${user_session_fact.session_user_id} ;;
#     fields: [user_session_measures*] -- ZL: commenting out so I can use first and last touch attribution sources as regular dimensions
  }

  join: session_attribution {
    relationship: many_to_one
    sql_on: ${sessions.session_user_id} = ${session_attribution.session_user_id}
          and ${sessions.session_start_raw} >= ${session_attribution.last_session_end_raw}
          and ${sessions.session_end_raw} <= ${session_attribution.session_end_raw};;
    fields: [attribution_detail*]
  }
  join: keywords {
    relationship: many_to_one
    sql_on:${keywords.keyword_id} = ${adevents.keyword_id} ;;
  }
  join: adgroups{
    relationship: many_to_one
    sql_on: ${keywords.ad_id} = ${adgroups.ad_id} ;;
  }
  join: campaigns {
    relationship: many_to_one
    sql_on: ${campaigns.campaign_id} = ${adgroups.campaign_id} ;;
  }
}
