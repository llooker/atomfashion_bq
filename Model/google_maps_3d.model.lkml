connection: "looker-private-demo"

include: "/Views/**/*.view.lkml"
include: "/Views/*.view.lkml" # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

explore: carbon_footprint_export {}
explore: autotelemetry {
  from: autotelemetry_aggr
  join: autotelemetry_predict {
    type: left_outer
    relationship: one_to_one
    sql_on: ${autotelemetry.date_date} =  ${autotelemetry_predict.date_date}
    AND ${autotelemetry_predict.vin} = ${autotelemetry.vin};;
  }
}

explore: autotelemetry_raw {
  view_name: autotelemetry
}
explore: trips {}
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
