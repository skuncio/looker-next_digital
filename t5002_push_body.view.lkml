view: t5002_push_body {
  sql_table_name: public.t5002_push_body ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: body_group_id {
    type: string
    sql: ${TABLE}.body_group_id ;;
  }

  dimension: body_payload_json {
    type: string
    sql: f_base64decode(${TABLE}.body_payload) ;;
  }

  dimension: payload_name {
    type: string
    sql: json_extract_path_text(f_base64decode(${TABLE}.body_payload),'name') ;;
  }

  dimension: payload_audience {
    type: string
    sql: json_extract_path_text(f_base64decode(${TABLE}.body_payload),'audience') ;;
  }

  dimension: payload_device_types {
    type: string
    sql: json_extract_path_text(f_base64decode(${TABLE}.body_payload), 'device_types') ;;
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

  dimension: body_push_id {
    type: string
    sql: ${TABLE}.body_push_id ;;
  }

  dimension: body_resource {
    type: string
    sql: ${TABLE}.body_resource ;;
  }

  dimension: body_trimmed {
    type: string
    sql: ${TABLE}.body_trimmed ;;
  }

  dimension: body_variant_id {
    type: string
    sql: ${TABLE}.body_variant_id ;;
  }

  dimension_group: occurred {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      hour_of_day
    ]
    sql: ${TABLE}.occurred ;;
  }

  dimension: offset_value {
    type: string
    sql: ${TABLE}.offset_value ;;
  }

  dimension_group: processed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      hour_of_day
    ]
    sql: ${TABLE}.processed ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
