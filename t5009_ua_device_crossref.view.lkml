view: t5009_ua_device_crossref {
  sql_table_name: PUBLIC.T5009_UA_DEVICE_CROSSREF ;;

  dimension: c5009_adid {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5009_ADID ;;
  }


  dimension: c5009_channel_id {
    view_label: "Device User"
    type: string
    sql: ${TABLE}.C5009_CHANNEL_ID ;;
  }

  dimension: c5009_device_attributes {
    type: string
    sql: ${TABLE}.C5009_DEVICE_ATTRIBUTES ;;
  }

  dimension_group: c5009_occurred {
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
    sql: ${TABLE}.C5009_OCCURRED ;;
  }

  dimension: c5009_platform {
    type: string
    sql: ${TABLE}.C5009_PLATFORM ;;
  }

  dimension: c5009_product {
    type: string

    case: {
      when: {
        sql: ${c5009_app_package_name} = 'com.appledaily.video.news.hk' and ${c5009_platform} = 'IOS' ;;
        label: "HK Appledaily IOS"
      }

      when: {
        sql: ${c5009_app_package_name} = 'com.nextmedia' and ${c5009_platform} = 'ANDROID' ;;
        label: "HK Appledaily Android"
      }

      when: {
        sql: ${c5009_app_package_name} = 'com.nextmedia' and ${c5009_platform} = 'AMAZON' ;;
        label: "HK Appledaily Amazon"
      }
      when: {
        sql: ${c5009_app_package_name} = 'com.appledaily.etw' and ${c5009_platform} = 'IOS' ;;
        label: "HK ETW IOS"
      }

      when: {
        sql: ${c5009_app_package_name} = 'com.appledaily.etw' and ${c5009_platform} = 'ANDROID' ;;
        label: "HK ETW Android"
      }

      when: {
        sql: ${c5009_app_package_name} = 'com.appledaily.etw' and ${c5009_platform} = 'AMAZON' ;;
        label: "HK ETW Amazon"
      }

      when: {
        sql: true ;;
        label: "unknown"
      }
    }
  }

  dimension: c5009_opt_in {
    type: string

    case: {
      when: {
        sql: (${c5009_app_package_name} = 'com.appledaily.video.news.hk'
        or ${c5009_app_package_name} = 'com.nextmedia'
        or ${c5009_app_package_name} = 'com.appledaily.video.news.tw'
        or ${c5009_app_package_name} = 'com.nextmediatw')
        and ${c5009_push_opt_in} = 'true' ;;
        label: "yes"
      }
      when: {
        sql: (${c5009_app_package_name} = 'com.appledaily.video.news.hk'
        or ${c5009_app_package_name} = 'com.nextmedia'
        or ${c5009_app_package_name} = 'com.appledaily.video.news.tw')
        or ${c5009_app_package_name} = 'com.nextmediatw')
        and ${c5009_push_opt_in} = 'false' ;;
        label: "no"
      }

      when: {
        sql:(${c5009_app_package_name} = 'com.nextmedia'
        or ${c5009_app_package_name} = 'com.nextmediatw')
        and ${c5009_platform} = 'AMAZON' ;;
        label: "na"
      }
         when: {
        sql: true ;;
        label: "unknown"
      }
    }
  }


  dimension: c5009_app_package_name {
    type: string
    sql: ${TABLE}.c5009_device_attributes:app_package_name::string ;;
  }

  dimension: c5009_app_version {
    type: string
    sql: ${TABLE}.c5009_device_attributes:app_version::string ;;
  }

  dimension: c5009_background_push_enabled {
    type: string
    sql: ${TABLE}.c5009_device_attributes:background_push_enabled::string ;;
  }

  dimension: c5009_location_enabled {
    type: string
    sql: ${TABLE}.c5009_device_attributes:location_enabled::string ;;
  }

  dimension: c5009_location_permission {
    type: string
    sql: ${TABLE}.c5009_device_attributes:location_permission::string ;;
  }

  dimension: c5009_push_opt_in {
    type: string
    sql: ${TABLE}.c5009_device_attributes:push_opt_in::string ;;
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
