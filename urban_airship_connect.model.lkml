connection: "nd_snowflake_analytics"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
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

explore: t5000_ua_connect_open {}

explore: t5001_ua_connect_first_open {}

explore: t5002_ua_connect_push_body {}

explore: t5003_ua_connect_send {}

explore: t5004_ua_connect_uninstall {}

explore: t5005_ua_connect_tag_change {}

explore: t5009_ua_device_crossref {}

explore: t5010_ua_connect_event {}
