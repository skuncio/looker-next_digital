view: t8020_user_content_preference {
  sql_table_name: public.t8020_user_content_preference ;;

  dimension_group: c8020_activity {
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
    sql: ${TABLE}.c8020_activity_date ;;
  }

  dimension: c8020_nxtuid {
    type: string
    sql: ${TABLE}.c8020_nxtuid ;;
  }

  dimension: c8020_platform {
    type: string
    sql: ${TABLE}.c8020_platform ;;
  }

  dimension: c8020_preference {
    type: string
    sql: ${TABLE}.c8020_preference ;;
  }

  dimension: c8020_product {
    type: string
    sql: ${TABLE}.c8020_product ;;
  }

  dimension: c8020_region {
    type: string
    sql: ${TABLE}.c8020_region ;;
  }

  dimension: c8020_view_count {
    type: number
    sql: ${TABLE}.c8020_view_count ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: View_Count_Sum {
    type: sum
    value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c8020_view_count} ;;
  }

  measure: distinct_users {
#    view_label: "User"
    type: count_distinct
    value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c8020_nxtuid} ;;
    approximate: yes
  }
}
