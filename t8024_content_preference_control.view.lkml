view: t8024_content_preference_control {
  sql_table_name: public.t8024_content_preference_control ;;

  dimension: c8024_access_days_range {
    type: number
    sql: ${TABLE}.c8024_access_days_range ;;
  }

  dimension: c8024_content_preference {
    type: string
    sql: ${TABLE}.c8024_content_preference ;;
  }

  dimension: c8024_id {
    type: string
    sql: ${TABLE}.c8024_id ;;
  }

  dimension: c8024_view_count_threshold {
    type: number
    sql: ${TABLE}.c8024_view_count_threshold ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
