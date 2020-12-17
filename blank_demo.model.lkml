connection: "snowlooker"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# explore: order_items {
#   join: users {
#     type: left_outer
#     relationship: many_to_one
#     sql_on: ${order_items.user_id} = ${users.id} ;;
#   }
# }

explore: order_items {}
