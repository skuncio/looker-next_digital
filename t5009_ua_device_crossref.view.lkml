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

  dimension: c5009_app_package_name {
    type: string
    sql: ${TABLE}.c5009_device_attributes:app_package_name::string ;;
  }

  dimension: c5009_background_push_enabled {
    type: string
    sql: ${TABLE}.c5009_device_attributes:c5009_background_push_enabled::string ;;
  }

  dimension: c5009_location_enabled {
    type: string
    sql: ${TABLE}.c5009_device_attributes:c5009_location_enabled::string ;;
  }

  dimension: c5009_location_permission {
    type: string
    sql: ${TABLE}.c5009_device_attributes:c5009_location_permission::string ;;
  }

  dimension: c5009_push_opt_in {
    type: string
    sql: ${TABLE}.c5009_device_attributes:c5009_push_opt_in::variant ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
