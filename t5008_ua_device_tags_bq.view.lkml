view: t5008_ua_device_tags_bq {
  sql_table_name: UA_CONNECT.T5008_UA_DEVICE_TAGS ;;

  dimension: c5008_active_ind {
    type: string
    sql: ${TABLE}.C5008_ACTIVE_IND ;;
  }

  dimension: c5008_channel_id {
    type: string
    sql: ${TABLE}.C5008_CHANNEL_ID ;;
  }

  dimension: c5008_platform {
    type: string
    sql: ${TABLE}.C5008_PLATFORM ;;
  }

  dimension: c5008_tags {
    type: string
    sql: ${TABLE}.C5008_TAGS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
