connection: "nd_bigquery_metrics"

include: "t5*.view.lkml"         # include all views in this project
#include: "*.view.lkml"         # include all views in this project
#include: "*.dashboard.lookml"  # include all dashboards in this project

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

explore: t5000_ua_connect_open_bq {
  join: t5002_ua_connect_push_body_bq  {
    fields:[
      t5002_ua_connect_push_body_bq.push_body_set*,
      t5002_ua_connect_push_body_bq.push_payload_set*
    ]
    sql_on: c5000_TRIGGERING_PUSH_ID = t5002_ua_connect_push_body_bq.c5002_push_id and ${t5002_ua_connect_push_body_bq.c5002_resource} = 'PUSH' ;;
    relationship: many_to_one
    type: inner
  }
  persist_for: "12 hours"
}

explore: t5001_ua_connect_first_open_bq {}

explore: t5002_ua_connect_push_schedules_bq {
  view_name: t5002_ua_connect_push_body_bq
  fields: [
    t5002_ua_connect_push_body_bq.push_body_set*,
    t5002_ua_connect_push_body_bq.schedule_set*
  ]
  sql_always_where: ${c5002_resource} = 'SCHEDULES' ;;
  persist_for: "12 hours"
}

explore: t5002_ua_connect_push_experiments_bq {
  view_name:  t5002_ua_connect_push_body_bq
  fields:[
    t5002_ua_connect_push_body_bq.push_body_set*,
    t5002_ua_connect_push_body_bq.experiments_set*
  ]
  sql_always_where: ${c5002_resource} = 'EXPERIMENTS' ;;
  persist_for: "12 hours"
}

explore: t5002_ua_connect_push_payload_bg {
  view_name: t5002_ua_connect_push_body_bq
  fields:[
    t5002_ua_connect_push_body_bq.push_body_set*,
    t5002_ua_connect_push_body_bq.push_payload_set*
  ]
  sql_always_where: ${c5002_resource} = 'PUSH' ;;
  persist_for: "12 hours"
}

explore: t5003_ua_connect_send_bq {}

explore: t5004_ua_connect_uninstall_bq {}

explore: t5005_ua_connect_tag_change_bq {}

explore: t5006_ua_connect_location_bq {}

explore: t5008_ua_device_tags_bq {
  view_label: "UA Device Tags"
  join: t5009_ua_device_crossref_bq {
    view_label: "UA Device Crossref"
    sql_on: ${t5008_ua_device_tags_bq.c5008_channel_id} = ${t5009_ua_device_crossref_bq.c5009_channel_id};;
    relationship: one_to_many
    type: left_outer
  }
}

explore: t5009_ua_device_crossref_bq {}

explore: t5010_ua_connect_event_bq {}
