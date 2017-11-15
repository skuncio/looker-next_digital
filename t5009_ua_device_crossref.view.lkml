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

  dimension: c5009_occurred {
    type: string
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
        sql: ${c5009_app_package_name} = 'com.appledaily.video.news.hk' ;;
        label: "HK Appledaily"
      }

      when: {
        sql: ${c5009_app_package_name} = 'com.nextmedia' ;;
        label: "HK Appledaily"
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
