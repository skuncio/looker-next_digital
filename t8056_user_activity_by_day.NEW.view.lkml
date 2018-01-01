view: t8056_user_activity_by_day_new {
  sql_table_name: PUBLIC.T8056_USER_ACTIVITY_BY_DAY ;;

  dimension: c8056_action {
    type: string
    sql: ${TABLE}.C8056_ACTION ;;
  }

  dimension: c8056_nxtuid {
    type: string
    sql: ${TABLE}.C8056_NXTUID ;;
  }

  dimension: c8056_platform {
    type: string
    sql: ${TABLE}.C8056_PLATFORM ;;
  }

  dimension: c8056_product {
    type: string
    sql: ${TABLE}.C8056_PRODUCT ;;
  }

  dimension: c8056_region {
    type: string
    sql: ${TABLE}.C8056_REGION ;;
  }

  dimension: c8056_view_datetime {
    type: string
    sql: ${TABLE}.C8056_VIEW_DATETIME ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
