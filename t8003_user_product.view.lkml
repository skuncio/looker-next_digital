view: t8003_user_product {
  sql_table_name: PUBLIC.T8003_USER_PRODUCT ;;

  dimension: c8003_activity_count {
    type: number
    sql: ${TABLE}.C8003_ACTIVITY_COUNT ;;
  }

  dimension_group: c8003_activity {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.C8003_ACTIVITY_DATE ;;
  }

  dimension: c8003_app {
    type: string
    sql: ${TABLE}.C8003_APP ;;
  }

  dimension: c8003_app_version {
    type: string
    sql: ${TABLE}.C8003_APP_VERSION ;;
  }

  dimension_group: c8003_create {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.C8003_CREATE_DATE ;;
  }

  dimension: c8003_device {
    type: string
    sql: ${TABLE}.C8003_DEVICE ;;
  }

  dimension: c8003_nxtuid {
    type: string
    sql: ${TABLE}.C8003_NXTUID ;;
  }

  dimension: c8003_omo_pid {
    type: string
    sql: ${TABLE}.C8003_OMO_PID ;;
  }

  dimension: c8003_platform {
    type: string
    sql: ${TABLE}.C8003_PLATFORM ;;
  }

  dimension: c8003_product {
    type: string
    sql: ${TABLE}.C8003_PRODUCT ;;
  }

  dimension: c8003_region {
    type: string
    sql: ${TABLE}.C8003_REGION ;;
  }

  dimension: c8003_source {
    type: string
    sql: ${TABLE}.C8003_SOURCE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
