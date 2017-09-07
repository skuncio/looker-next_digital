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
    sql: ${TABLE}.PAYLOAD ;;
  }

  dimension: push_id {
    type: string
    sql: ${TABLE}.PUSH_ID ;;
  }

  dimension: resource {
    type: string
    sql: ${TABLE}.RESOURCE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
