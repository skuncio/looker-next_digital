view: ua_connect_event {
  sql_table_name: PUBLIC.UA_CONNECT_EVENT ;;

  dimension: eventdata {
    type: string
    sql: ${TABLE}.EVENTDATA ;;
  }

  dimension: event_type {
    sql: eventdata:type::string ;;
  }

  dimension: push_id {
    sql: eventdata:body:push_id::string ;;
  }

  dimension: device_type {
    sql: eventdata:device:device_type::string ;;
  }

  dimension: device_channel {
    sql: eventdata:device:channel::string ;;
  }

  dimension_group: occurred {
    type: time
    timeframes: [
      time,
      date,
      week,
      month,
      year,
      hour_of_day
    ]
    sql: eventdata:occurred::timestamp ;;
  }

  dimension_group: processed {
    type: time
    timeframes: [
      time,
      date,
      week,
      month,
      year,
      hour_of_day
    ]
    sql: eventdata:processed::timestamp ;;
  }

  dimension: payload {
    sql: base64_decode_string(eventdata:body:payload)::variant ;;
  }

  dimension: payload_name {
    sql: ${payload}:payload:name::string ;;
  }

  dimension: payload_audience {
    sql: ${payload}:audience::string ;;
  }

  dimension: payload_device_types {
    type: string
    sql: base64_decode_string(eventdata:body:payload:device_types) ;;
  }

  dimension: payload_variants {
    type: string
    sql: base64_decode_string(eventdata:body:payload:variants) ;;
  }

  dimension: payload_variants_name_1 {
    type: string
#    sql: json_extract_path_text((${payload_variants}, 0),  'name') ;;
    sql: json_extract_path_text((json_extract_path_text(f_base64decode(${TABLE}.body_payload), 'variants', 0)),  'name') ;;
  }

  dimension: payload_variants_name_2 {
    type: string
#    sql: json_extract_path_text((${payload_variants}, 1),  'name') ;;
    sql: json_extract_path_text((json_extract_path_text(f_base64decode(${TABLE}.body_payload), 'variants', 1)),  'name') ;;
  }

  dimension: payload_variants_push_1 {
    type: string
#    sql: json_extract_path_text((${payload_variants}, 0),  'name') ;;
    sql: json_extract_path_text((json_extract_path_text(f_base64decode(${TABLE}.body_payload), 'variants', 0)),  'push') ;;
  }

  dimension: payload_variants_push__notification_1 {
    type: string
#    sql: json_extract_path_text((${payload_variants}, 0),  'name') ;;
    sql: json_extract_path_text((json_extract_path_text(f_base64decode(${TABLE}.body_payload), 'variants', 0)),  'push', 'notification', 'alert') ;;
  }

  dimension: payload_variants_push_2 {
    type: string
#    sql: json_extract_path_text((${payload_variants}, 0),  'name') ;;
    sql: json_extract_path_text((json_extract_path_text(f_base64decode(${TABLE}.body_payload), 'variants', 1)),  'push') ;;
  }

  dimension: payload_variants_push__notification_2 {
    type: string
#    sql: json_extract_path_text((${payload_variants}, 0),  'name') ;;
    sql: json_extract_path_text((json_extract_path_text(f_base64decode(${TABLE}.body_payload), 'variants', 1)),  'push', 'notification', 'alert') ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
