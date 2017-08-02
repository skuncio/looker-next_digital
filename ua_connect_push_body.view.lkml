view: ua_connect_push_body {
  sql_table_name: PUBLIC.UA_CONNECT_PUSH_BODY ;;

  dimension: body_payload {
    type: string
    sql: ${TABLE}.body_payload ;;
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
    sql: ${body_payload}:variants) ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: occurred_time {
    type: string
    sql: ${TABLE}.occurred_time ;;
  }

  dimension: payload {
    type: string
    sql: ${TABLE}.payload ;;
  }

  dimension: push_id {
    type: string
    sql: ${TABLE}.push_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
