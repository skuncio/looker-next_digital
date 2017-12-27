view: pdt_user_product_active_days {
  derived_table: {
    sql: SELECT
          TO_DATE(t8056_user_activty_by_day.C8056_VIEW_DATETIME) as view_date
          T8056_USER_ACTIVTY_BY_DAY.C8056_region as region,
          T8056_USER_ACTIVTY_BY_DAY.C8056_product as product,
          T8056_USER_ACTIVTY_BY_DAY.C8056_platform as platform,
          T8056_USER_ACTIVTY_BY_DAY.C8056_action as action,
          T8056_USER_ACTIVTY_BY_DAY.C8056_NXTUID as nxtuid,
          COUNT(DISTINCT (TO_CHAR(TO_DATE(t8056_user_activty_by_day.C8056_VIEW_DATETIME ), 'YYYY-MM-DD')) ) AS active_day_count
          FROM PUBLIC.T8056_USER_ACTIVTY_BY_DAY
          GROUP BY 1,2,3,4,5,6
          ;;
    sql_trigger_value:  select max(TO_DATE(t8056_user_activty_by_day.C8056_VIEW_DATETIME ))
                        from t8056_user_activty_by_day
      ;;
  }

  dimension_group: view {
    group_label: "View Date"
    type: time
    timeframes: [
      time,
      date,
      day_of_week,
      day_of_week_index,
      week,
      month,
      year,
      hour_of_day
    ]
    convert_tz: no
    #  datatype: timestamp
    sql: ${TABLE}.view_date ;;
  }

  dimension: view_date_d {
    group_label: "View Date"
    sql: TO_DATE(${TABLE}.view_date) ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: nxtuid {
    type: string
    sql: ${TABLE}.nxtuid ;;
  }

  dimension: view_type {
    type: string
    sql: ${TABLE}.action ;;
  }


#  dimension: primary_key {
#    primary_key: yes
#    type: string
#    sql: CONACT(${region}, ${product}, ${platform}, ${nxtuid}) ;;
#  }


  dimension: active_days {
    type: number
    sql: ${TABLE}.active_days ;;
  }

  measure: count {
    type: count
    value_format: "#,##0"
  }


  measure: total_page_views {
    type: count
    value_format: "#,##0"
    filters: {
      field: view_type
      value: "PAGEVIEW"
    }
  }

  measure: total_video_views {
    type: count
    value_format: "#,##0"
    filters: {
      field: view_type
      value: "VIDEOVIEW"
    }
  }

  measure: average_active_days {
    type: average
    value_format: "#,##0"
    sql: ${TABLE}.active_day_count ;;
  }

  measure: sum_active_days {
    type: sum
    value_format: "#,##0"
    sql: ${TABLE}.active_day_count ;;
  }

  measure: calculated_average_active_days {
    type: number
    value_format: "#,##0"
    sql: ${sum_active_days} / nullif(${distinct_users},0) ;;
  }

  measure: distinct_users {
    type: count_distinct
    value_format: "#,##0"
    sql: ${nxtuid} ;;
  }
}
