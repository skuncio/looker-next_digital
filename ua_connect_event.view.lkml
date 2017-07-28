view: ua_connect_event {
  sql_table_name: PUBLIC.UA_CONNECT_EVENT ;;

  dimension: eventdata {
    type: string
    sql: ${TABLE}.EVENTDATA ;;
  }

  dimension: event_type {
    type: string
    sql: eventdata:type ;;
  }

  dimension: push_id {
    type: string
    sql: eventdata:body:push_id ;;
  }

  dimension: device_type {
    type: string
    sql: eventdata:device:device_type ;;
  }

  dimension: device_channel {
    type: string
    sql: eventdata:device:channel ;;
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
    sql: eventdata:occurred ;;
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
    sql: eventdata:processed ;;
  }

  dimension: payload {
    type: string
    sql: base64_decode_string(eventdata:body:payload) ;;
  }

  dimension: payload_name {
    type: string
    sql: ${TABLE}.payload:name ;;
  }

  dimension: payload_audience {
    type: string
    sql: ${TABLE}.payload:audience ;;
  }

  dimension: payload_device_types {
    type: string
    sql: ${TABLE}.payload:device_types ;;
  }

  dimension: payload_variants {
    type: string
    sql: json_extract_path_text(f_base64decode(${TABLE}.body_payload), 'variants') ;;
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
