view: t5002_ua_connect_push_body {
  sql_table_name: PUBLIC.T5002_UA_CONNECT_PUSH_BODY ;;

  dimension: _c5002_resource {
    type: string
    sql: ${TABLE}." C5002_RESOURCE" ;;
  }

  dimension: c5002_event_type {
    type: string
    sql: ${TABLE}.C5002_EVENT_TYPE ;;
  }

  dimension: c5002_occurred_time {
    type: string
    sql: ${TABLE}.C5002_OCCURRED_TIME ;;
  }

  dimension: c5002_payload {
    type: string
    sql: ${TABLE}.C5002_PAYLOAD ;;
  }

  dimension: c5002_processed_time {
    type: string
    sql: ${TABLE}.C5002_PROCESSED_TIME ;;
  }

  dimension: c5002_push_id {
    type: string
    sql: ${TABLE}.C5002_PUSH_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
