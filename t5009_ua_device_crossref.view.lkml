view: t5009_ua_device_crossref {
  sql_table_name: PUBLIC.T5009_UA_DEVICE_CROSSREF ;;

  dimension: c5009_adid {
    type: string
    sql: ${TABLE}.C5009_ADID ;;
  }

  dimension: c5009_channel_id {
    type: string
    sql: ${TABLE}.C5009_CHANNEL_ID ;;
  }

  dimension: c5009_device_attributes {
    type: string
    sql: ${TABLE}.C5009_DEVICE_ATTRIBUTES ;;
  }

  dimension: c5009_occurred {
    type: string
    sql: ${TABLE}.C5009_OCCURRED ;;
  }

  dimension: c5009_platform {
    type: string
    sql: ${TABLE}.C5009_PLATFORM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
