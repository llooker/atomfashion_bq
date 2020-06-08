connection: "snowflake"
label: "Atom Fashion"

# include all the views
include: "*.view"
include: "*.dashboard"

# include all the dashboards
# include: "*.dashboard"

datagroup: ecommerce_etl {
  sql_trigger: SELECT max(completed_at) FROM ecomm.etl_jobs ;;
  max_cache_age: "24 hours"}

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
}

explore: projected_revenue {
  label: "(2) Projected Revenue"
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

explore: events{
  label:  "(1) Digital Ads - Event Data"
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
  label: "(2) Marketing Attribution"
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
