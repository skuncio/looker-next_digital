connection: "nd_snowflake_analytics"

include: "t5*.view.lkml"         # include all views in this project
include: "ua_connect_event.view"
include: "ua_device_tags.view"
include: "ua_connect_push_body.view"
include: "ua_connect_tag_change.view"
include: "ua_connect_open.view"
include: "ua_connect_first_open.view"
include: "ua_connect_uninstall.view"
include: "ua_device_crossref.view"
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

explore: t5002_ua_connect_push_schedules {
  view_name: t5002_ua_connect_push_body
  fields: [
    t5002_ua_connect_push_body.push_body_set*,
    t5002_ua_connect_push_body.schedule_set*
  ]
  sql_always_where: ${c5002_resource} = 'SCHEDULES' ;;
  persist_for: "12 hours"
}

explore: t5002_ua_connect_push_experiments {
  view_name:  t5002_ua_connect_push_body
  fields:[
    t5002_ua_connect_push_body.push_body_set*,
    t5002_ua_connect_push_body.experiments_set*
  ]
  sql_always_where: ${c5002_resource} = 'EXPERIMENTS' ;;
  persist_for: "12 hours"
}

explore: t5002_ua_connect_push_payload {
  view_name: t5002_ua_connect_push_body
  fields:[
    t5002_ua_connect_push_body.push_body_set*,
    t5002_ua_connect_push_body.push_payload_set*
  ]
  sql_always_where: ${c5002_resource} = 'PUSH' ;;
  persist_for: "12 hours"
}

explore: t5000_ua_connect_open {
  join: t5002_ua_connect_push_body  {
    fields:[
      t5002_ua_connect_push_body.push_body_set*,
      t5002_ua_connect_push_body.push_payload_set*
    ]
    sql_on: c5000_TRIGGERING_PUSH_ID = t5002_ua_connect_push_body.c5002_push_id and ${t5002_ua_connect_push_body.c5002_resource} = 'PUSH' ;;
    relationship: many_to_one
    type: inner
  }
  persist_for: "12 hours"
}


#explore: t5000_ua_connect_open {}

explore: t5001_ua_connect_first_open {}

#explore: t5002_ua_connect_push_body {}

explore: t5003_ua_connect_send {}

explore: t5004_ua_connect_uninstall {}

explore: t5005_ua_connect_tag_change {}

explore: t5008_ua_device_tags {
  view_label: "UA Device Tags"
  join: t5009_ua_device_crossref {
    view_label: "UA Device Crossref"
    sql_on: ${t5008_ua_device_tags.c5008_channel_id} = ${t5009_ua_device_crossref.c5009_channel_id};;
    relationship: one_to_many
    type: left_outer
  }
}

explore: t5006_ua_connect_location {}

explore: t5009_ua_device_crossref {}

explore: t5010_ua_connect_event {}



explore: ua_connect_event {
  persist_for: "12 hours"
}

explore: ua_connect_tag_change {
  persist_for: "12 hours"
}

explore: ua_connect_first_open {
  persist_for: "12 hours"
}

explore: ua_connect_uninstall {
  persist_for: "12 hours"
}

explore: ua_connect_push_schedules {
  view_name: ua_connect_push_body
  fields: [
    ua_connect_push_body.push_body_set*,
    ua_connect_push_body.schedule_set*
  ]
  sql_always_where: ${resource} = 'SCHEDULES' ;;
  persist_for: "12 hours"
}

explore: ua_connect_push_experiments {
  view_name:  ua_connect_push_body
  fields:[
    ua_connect_push_body.push_body_set*,
    ua_connect_push_body.experiments_set*
  ]
  sql_always_where: ${resource} = 'EXPERIMENTS' ;;
  persist_for: "12 hours"
}

explore: ua_connect_push_payload {
  view_name: ua_connect_push_body
  fields:[
    ua_connect_push_body.push_body_set*,
    ua_connect_push_body.push_payload_set*
  ]
  sql_always_where: ${resource} = 'PUSH' ;;
  persist_for: "12 hours"
}

explore: ua_connect_open {
  join: ua_connect_push_body  {
    fields:[
      ua_connect_push_body.push_body_set*,
      ua_connect_push_body.push_payload_set*
    ]
    sql_on: TRIGGERING_PUSH_ID = ua_connect_push_body.PUSH_ID and ${ua_connect_push_body.resource} = 'PUSH' ;;
    relationship: many_to_one
    type: inner
  }
  persist_for: "12 hours"
}

explore: ua_device_tags {
  persist_for: "12 hours"
}

explore: ua_device_crossref {
  persist_for: "12 hours"
}
