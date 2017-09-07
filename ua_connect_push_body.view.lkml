view: ua_connect_push_body {
  sql_table_name: PUBLIC.UA_CONNECT_PUSH_BODY ;;

  dimension: event_type {
    type: string
    sql: ${TABLE}.EVENT_TYPE ;;
  }

  dimension: occurred_time {
    type: string
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
    type: string
    sql: ${TABLE}.PAYLOAD:audience::string ;;
  }

  dimension: device_type {
    view_label: "Push"
    type: string
    sql: ${TABLE}.PAYLOAD:device_type::string ;;
  }

  dimension: payload_content {
    view_label: "Push"
    type: string
    sql: ${TABLE}.PAYLOAD:notification:actions:open:content::string ;;
  }

  dimension: payload_type {
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
