view: t5009_ua_device_crossref_bq {
  sql_table_name: UA_CONNECT.t5009_ua_device_crossref ;;

  dimension: c5009_adid {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.c5009_ADID ;;
  }

  dimension: c5009_channel_id {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.c5009_channel_id ;;
  }

  dimension: c5009_device_attributes {
    type: string
    sql: ${TABLE}.c5009_device_attributes ;;
  }

  dimension_group: c5009_occurred {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: CAST(${TABLE}.c5009_occurred AS TIMESTAMP) ;;
  }

  dimension: c5009_platform {
    type: string
    sql: ${TABLE}.c5009_platform ;;
  }

  dimension: c5009_product {
    type: string
    sql:
      CASE
        when ( ${c5009_app_package_name} = 'com.appledaily.video.news.hk' and ${c5009_platform} = 'IOS' )
             then 'HK Appledaily IOS'
        when ( ${c5009_app_package_name} = 'com.nextmedia' and ${c5009_platform} = 'ANDROID' )
             then 'HK Appledaily Android'
        when ( ${c5009_app_package_name} = 'com.nextmedia' and ${c5009_platform} = 'AMAZON' )
             then 'HK Appledaily Amazon'
        when ( ${c5009_app_package_name} = 'com.appledaily.video.news.tw' and ${c5009_platform} = 'IOS' )
             then 'TW Appledaily IOS'
        when ( ${c5009_app_package_name} = 'com.nextmediatw' and ${c5009_platform} = 'ANDROID' )
             then 'TW Appledaily Android'
        when ( ${c5009_app_package_name} = 'com.nextmediatw' and ${c5009_platform} = 'AMAZON' )
             then 'TW Appledaily Amazon'
        when ( ${c5009_app_package_name} = 'com.appledaily.etw' and ${c5009_platform} = 'IOS' )
             then 'HK ETW IOS'
        when ( ${c5009_app_package_name} = 'com.appledaily.etw' and ${c5009_platform} = 'ANDROID' )
             then 'HK ETW Android'
        when ( ${c5009_app_package_name} = 'com.appledaily.etw' and ${c5009_platform} = 'AMAZON' )
             then 'HK ETW Amazon'
        else 'unknown'
      END ;;
  }

  dimension: c5009_opt_in {
    type: string
    sql:
     CASE
        when ((${c5009_app_package_name} = 'com.appledaily.video.news.hk'
                  or ${c5009_app_package_name} = 'com.nextmedia'
                  or ${c5009_app_package_name} = 'com.appledaily.video.news.tw'
                  or ${c5009_app_package_name} = 'com.nextmediatw')
                  and ${c5009_push_opt_in} = 'true' )
              then 'yes'
        when ((${c5009_app_package_name} = 'com.appledaily.video.news.hk'
                  or ${c5009_app_package_name} = 'com.nextmedia'
                  or ${c5009_app_package_name} = 'com.appledaily.video.news.tw'
                  or ${c5009_app_package_name} = 'com.nextmediatw')
                  and ${c5009_push_opt_in} = 'false' )
              then 'no'
        when  ((${c5009_app_package_name} = 'com.nextmedia'
                  or ${c5009_app_package_name} = 'com.nextmediatw')
                  and ${c5009_platform} = 'AMAZON' )
              then 'na'
        else  'unknown'
     END ;;
  }


  dimension: c5009_app_package_name {
    type: string
    sql: JSON_EXTRACT_SCALAR(c5009_device_attributes, '$.app_package_name') ;;
#    sql: ${TABLE}.c5009_device_attributes:app_package_name::string ;;
  }

  dimension: c5009_app_version {
    type: string
    sql: JSON_EXTRACT_SCALAR(c5009_device_attributes, '$.app_version') ;;
#    sql: ${TABLE}.c5009_device_attributes:app_version::string ;;
  }

  dimension: c5009_background_push_enabled {
    type: string
    sql: JSON_EXTRACT_SCALAR(c5009_device_attributes, '$.background_push_enabled') ;;
#    sql: ${TABLE}.c5009_device_attributes:background_push_enabled::string ;;
  }

  dimension: c5009_location_enabled {
    type: string
    sql: JSON_EXTRACT_SCALAR(c5009_device_attributes, '$.location_enabled') ;;
#    sql: ${TABLE}.c5009_device_attributes:location_enabled::string ;;
  }

  dimension: c5009_location_permission {
    type: string
    sql: JSON_EXTRACT_SCALAR(c5009_device_attributes, '$.location_permission') ;;
#    sql: ${TABLE}.c5009_device_attributes:location_permission::string ;;
  }

  dimension: c5009_push_opt_in {
    type: string
    sql: JSON_EXTRACT_SCALAR(c5009_device_attributes, '$.push_opt_in') ;;
#    sql: ${TABLE}.c5009_device_attributes:push_opt_in::string ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }

  measure: distinct_channel_id {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5009_channel_id} ;;
  }

  measure: distinct_adid {
    view_label: "Device User"
    type: count_distinct
    value_format: "#,##0"
    #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c5009_adid} ;;
  }

}
