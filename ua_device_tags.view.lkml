view: ua_device_tags {
  sql_table_name: PUBLIC.UA_DEVICE_TAGS ;;

  dimension: active_ind {
    type: string
    sql: ${TABLE}.ACTIVE_IND ;;
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.CHANNEL_ID ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.PLATFORM ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.TAGS ;;
#    sql:parse_json(base64_decode_string(eventdata:body:payload)::string) ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
