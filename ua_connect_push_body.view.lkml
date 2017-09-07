view: ua_connect_push_body {
  sql_table_name: PUBLIC.UA_CONNECT_PUSH_BODY ;;

  dimension: event_type {
    type: string
    sql: ${TABLE}.EVENT_TYPE ;;
  }

  dimension_group: occurred_time {
    type: time
    sql: ${TABLE}.OCCURRED_TIME ;;
  }

  dimension: payload {
    type: string
    sql: ${TABLE}.PAYLOAD::variant ;;
  }

  dimension: push_id {
    type: string
    sql: ${TABLE}.PUSH_ID ;;
  }

  dimension: resource {
    type: string
    sql: ${TABLE}.RESOURCE ;;
  }

  dimension: audience {
    view_label: "Push"
    view_label: "Experiments"
    type: string
    sql: ${TABLE}.PAYLOAD:audience::string ;;
  }

  dimension: device_types {
    view_label: "Push"
    view_label: "Experiments"
    type: string
    sql: ${TABLE}.PAYLOAD:device_types::string ;;
  }

  dimension: notification_content {
    view_label: "Push"
    type: string
    sql: ${TABLE}.PAYLOAD:notification:actions:open:content::string ;;
  }

  dimension: notification_type {
    view_label: "Push"
    type: string
    sql: ${TABLE}.PAYLOAD:notification:actions:open:type::string ;;
  }

  dimension: notification_alert {
    view_label: "Push"
    type: string
    sql: ${TABLE}.PAYLOAD:notification:alert::string ;;
  }

  dimension: notification_ios_sound {
    view_label: "Push"
    type: string
    sql: ${TABLE}.PAYLOAD:notification:ios:sound::string ;;
  }

  dimension: schedule_audience {
    view_label: "Schedules"
    type: string
    sql: ${TABLE}.PAYLOAD:push:audience::string ;;
  }

  dimension: schedule_device_types {
    view_label: "Schedules"
    type: string
    sql: ${TABLE}.PAYLOAD:push:device_types::string ;;
  }

  dimension: schedule_notification_content {
    view_label: "Schedules"
    type: string
    sql: ${TABLE}.PAYLOAD:push:notification:actions:open:content::string ;;
  }

  dimension: schedule_notification_type {
    view_label: "Schedules"
    type: string
    sql: ${TABLE}.PAYLOAD:push:notification:actions:open:type::string ;;
  }

  dimension: schedule_push_ids {
    view_label: "Schedules"
    type: string
    sql: ${TABLE}.PAYLOAD:push_ids::string ;;
  }

  dimension_group: scheduled_time {
    view_label: "Schedules"
    type: time
    sql: CONVERT_TIMEZONE('UTC', 'Hongkong', CAST(${TABLE}.PAYLOAD:schedule:scheduled_time::timestamp AS TIMESTAMP_NTZ)) ;;
  }



#     parse_json(base64_decode_string(eventdata:body:payload)::variant):audience::string  AS audience,
#   parse_json(base64_decode_string(eventdata:body:payload)::variant):device_types::string  AS device_types,
# parse_json(base64_decode_string(eventdata:body:payload)::variant):notification:actions:open:content::string  AS payload_content,
#    parse_json(base64_decode_string(eventdata:body:payload)::variant):notification:actions:open:type::string  AS payload_type,
# parse_json(base64_decode_string(eventdata:body:payload)::variant):notification:alert::string  AS notification_alert,
# parse_json(base64_decode_string(eventdata:body:payload)::variant):notification:ios:sound::string  AS notification_ios_sound,
#    parse_json(base64_decode_string(eventdata:body:payload)::variant):name::string  AS payload_name,
#    parse_json(base64_decode_string(eventdata:body:payload)::variant):variants::variant  AS payload_variants,


  measure: count {
    type: count
    drill_fields: []
  }
}
