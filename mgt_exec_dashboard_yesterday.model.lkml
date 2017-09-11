connection: "nd_snowflake"
#connection: "next_prd_redshift"

persist_for: "10 minutes"

include: "t4007_dashboard_yesterday.view"         # include specific views in this project
include: "pdt_view_agg_with_article.view"
include: "ua_connect_event.view"
include: "ua_device_tags.view"
include: "ua_connect_push_body.view"
include: "ua_connect_push_schedule.view"
include: "*.dashboard.lookml"                     # include all dashboards in this project

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

explore: t4007_dashboard_yesterday {
  persist_for: "10 minutes"
}

explore: pdt_view_agg_with_article {
  persist_for: "12 hours"
}

explore: ua_connect_event {
  persist_for: "12 hours"
}

explore: ua_connect_push_body {
  persist_for: "12 hours"
}

explore: ua_connect_push_schedule {
  sql_always_where: ua_connect_push_body.RESOURCE = 'SCHEDULES' ;;
  persist_for: "12 hours"
}

explore: ua_device_tags {
  persist_for: "12 hours"
}
