view: ua_connect_uninstall {
  sql_table_name: PUBLIC.UA_CONNECT_UNINSTALL ;;

  dimension: adid {
    type: string
    sql: ${TABLE}.ADID ;;
  }

  dimension: android_aaid {
    type: string
    sql: ${TABLE}.ANDROID_AAID ;;
  }

  dimension: app_package_name {
    type: string
    sql: ${TABLE}.APP_PACKAGE_NAME ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.APP_VERSION ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.DEVICE_TYPE ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.EVENT_TYPE ;;
  }

  dimension: ios_adid {
    type: string
    sql: ${TABLE}.IOS_ADID ;;
  }

  dimension: limited_ad_tracking {
    type: string
    sql: ${TABLE}.LIMITED_AD_TRACKING ;;
  }

#  dimension: occurred_time {
#    type: string
#    sql: ${TABLE}.OCCURRED_TIME ;;
#  }

  dimension_group: occurred {
    type: time
    timeframes: [
      raw,
      date,
      hour_of_day,
      time,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.OCCURRED_TIME ;;
  }

#  dimension: processed_time {
#    type: string
#    sql: ${TABLE}.PROCESSED_TIME ;;
#  }

  dimension_group: processed {
    type: time
    timeframes: [
      raw,
      date,
      hour_of_day,
      time,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PROCESSED_TIME ;;
  }

  dimension: ua_device_attributes {
    type: string
    sql: ${TABLE}.UA_DEVICE_ATTRIBUTES ;;
  }

  dimension: ua_device_channel {
    type: string
    sql: ${TABLE}.UA_DEVICE_CHANNEL ;;
  }

  measure: count {
    type: count
    drill_fields: [app_package_name]
  }
}
