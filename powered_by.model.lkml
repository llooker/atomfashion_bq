connection: "snowflake"
label: "Powered By Looker"

# include all the views
include: "*.view"

# include all the dashboards
# include: "*.dashboard"

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
    relationship: one_to_many
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
    field: brand
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
    relationship: one_to_many
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

explore: events {
  hidden: yes
  label: "Web Event Data"
  description: "All Events that occurred on the site, including sessions, users, and products"
#   access_filter_fields: [product_viewed.brand]
  access_filter: {
    field: product_viewed.brand
    user_attribute: brand
  }

  join: sessions {
    sql_on: ${events.session_id} =  ${sessions.session_id} ;;
    relationship: many_to_one
  }

  join: session_landing_page {
    from: events
    sql_on: ${sessions.landing_event_id} = ${session_landing_page.event_id} ;;
    fields: [simple_page_info*]
    relationship: one_to_one
  }

  join: session_bounce_page {
    from: events
    sql_on: ${sessions.bounce_event_id} = ${session_bounce_page.event_id} ;;
    fields: [simple_page_info*]
    relationship: many_to_one
  }

  join: product_viewed {
    from: products
    sql_on: ${events.viewed_product_id} = ${product_viewed.id} ;;
    relationship: many_to_one
  }

  join: users {
    sql_on: ${sessions.session_user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: user_order_facts {
    sql_on: ${users.id} = ${user_order_facts.user_id} ;;
    relationship: one_to_one
    view_label: "Users"
  }
}

explore: sessions {
  hidden: yes
  label: "Web Session Data"
#   access_filter_fields: [product_viewed.brand]
  access_filter: {
    field: product_viewed.brand
    user_attribute: brand
  }

  join: events {
    sql_on: ${sessions.session_id} = ${events.session_id} ;;
    relationship: one_to_many
  }

  join: product_viewed {
    from: products
    sql_on: ${events.viewed_product_id} = ${product_viewed.id} ;;
    relationship: many_to_one
  }

  join: session_landing_page {
    from: events
    sql_on: ${sessions.landing_event_id} = ${session_landing_page.event_id} ;;
    fields: [simple_page_info*]
    relationship: one_to_one
  }

  join: session_bounce_page {
    from: events
    sql_on: ${sessions.bounce_event_id} = ${session_bounce_page.event_id} ;;
    fields: [simple_page_info*]
    relationship: one_to_one
  }

  join: users {
    relationship: many_to_one
    sql_on: ${users.id} = ${sessions.session_user_id} ;;
  }

  join: user_order_facts {
    relationship: many_to_one
    sql_on: ${user_order_facts.user_id} = ${users.id} ;;
    view_label: "Users"
  }
}
