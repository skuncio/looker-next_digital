view: ua_connect_event {
  sql_table_name: PUBLIC.UA_CONNECT_EVENT ;;

  dimension: eventdata {
    type: string
    sql: ${TABLE}.EVENTDATA ;;
  }

  dimension: event_type {
    sql: eventdata:type::string ;;
  }

  dimension: current_tags {
    view_label: "current tags"
    sql: eventdata:body:current:device::string ;;
  }

  dimension: current_tags_01 {
    view_label: "current tags"
    sql: eventdata:body:current:device[0]::string ;;
  }

  dimension: current_tags_02 {
    view_label: "current tags"
    sql: eventdata:body:current:device[1]::string ;;
  }

  dimension: current_tags_03 {
    view_label: "current tags"
    sql: eventdata:body:current:device[2]::string ;;
  }

  dimension: current_tags_04 {
    view_label: "current tags"
    sql: eventdata:body:current:device[3]::string ;;
  }

  dimension: current_tags_05 {
    view_label: "current tags"
    sql: eventdata:body:current:device[4]::string ;;
  }

  dimension: current_tags_06 {
    view_label: "current tags"
    sql: eventdata:body:current:device[5]::string ;;
  }

  dimension: current_tags_07 {
    view_label: "current tags"
    sql: eventdata:body:current:device[6]::string ;;
  }

  dimension: current_tags_08 {
    view_label: "current tags"
    sql: eventdata:body:current:device[7]::string ;;
  }

  dimension: current_tags_09 {
    view_label: "current tags"
    sql: eventdata:body:current:device[8]::string ;;
  }

  dimension: current_tags_10 {
    view_label: "current tags"
    sql: eventdata:body:current:device[9]::string ;;
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
    group_label: "occurred"
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

  dimension: occurred_date_d {
    group_label: "occurred"
    sql: TO_DATE(CONVERT_TIMEZONE('UTC', 'Hongkong', CAST(eventdata:occurred::timestamp  AS TIMESTAMP_NTZ))) ;;
  }

  dimension_group: processed {
    group_label: "processed"
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

  dimension: processed_date_d {
    group_label: "processed"
    sql: TO_DATE(CONVERT_TIMEZONE('UTC', 'Hongkong', CAST(eventdata:processed::timestamp  AS TIMESTAMP_NTZ))) ;;
  }

  dimension: payload {
    sql:parse_json(base64_decode_string(eventdata:body:payload)::string) ;;
  }

  dimension: body_payload {
    sql:  parse_json(${payload}::string) ;;
  }

  dimension: payload_name {
    sql: ${body_payload}:name::string ;;
  }

  dimension: payload_audience {
    sql: ${body_payload}:audience::string ;;
  }

  dimension: payload_device_types {
    type: string
    sql: ${body_payload}:device_types ;;
  }

  dimension: payload_variants {
    type: string
    sql: ${body_payload}:variants ;;
  }

  dimension: payload_notification {
    type: string
    sql: ${body_payload}:notification ;;
  }

  dimension: payload_content {
    type: string
    sql: ${body_payload}:notification:actions:open:content ;;
  }

  dimension: payload_alert {
    type: string
    sql: ${body_payload}:notification:alert ;;
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

  dimension: body_resource {
    #    type: string
    sql: eventdata:body:resource::string ;;
  }

  dimension: body_trimmed {
    type: string
    sql: ${TABLE}.body_trimmed ;;
  }

  dimension: body_variant_id {
    type: string
    sql: ${TABLE}.body_variant_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
