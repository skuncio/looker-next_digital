view: ua_device_crossref {
  sql_table_name: PUBLIC.UA_DEVICE_CROSSREF ;;

  dimension: adid {
    type: string
    sql: ${TABLE}.ADID ;;
  }

  dimension: android_aaid {
    type: string
    sql: ${TABLE}.ANDROID_AAID ;;
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.CHANNEL_ID ;;
  }

  dimension: device_attributes {
    type: string
    sql: ${TABLE}.DEVICE_ATTRIBUTES ;;
  }

  dimension: ios_adid {
    type: string
    sql: ${TABLE}.IOS_ADID ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.PLATFORM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
