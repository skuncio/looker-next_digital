view: t8020_user_content_preference_old {
  sql_table_name: public.t8020_user_content_preference ;;

  dimension_group: c8020_create {
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
    sql: ${TABLE}.c8020_create_date ;;
  }

  dimension_group: c8020_last_view {
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
    sql: ${TABLE}.c8020_last_view_date ;;
  }

  dimension: c8020_nxtuid {
    type: string
    sql: ${TABLE}.c8020_nxtuid ;;
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

  measure: Row_count {
    type: count
    drill_fields: []
  }

  measure: View_Count_Sum {
    type: sum
  #  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c8020_view_count} ;;
  }

  measure: distinct_users {
#    view_label: "User"
  type: count_distinct
# value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
  sql: ${c8020_nxtuid} ;;
  approximate: yes
}
}
