view: pdt_user_product_active_days {
  derived_table: {
    sql: SELECT
          T8056_USER_ACTIVTY_BY_DAY.C8056_region as region,
          T8056_USER_ACTIVTY_BY_DAY.C8056_product as product,
          T8056_USER_ACTIVTY_BY_DAY.C8056_platform as platform,
          T8056_USER_ACTIVTY_BY_DAY.C8056_NXTUID as nxtuid,
          COUNT(DISTINCT (TO_CHAR(TO_DATE(t8056_user_activty_by_day.C8056_VIEW_DATETIME ), 'YYYY-MM-DD')) ) AS active_days
          FROM PUBLIC.T8056_USER_ACTIVTY_BY_DAY
          GROUP BY 1,2,3,4
          ;;
    sql_trigger_value:  select max(TO_DATE(t8056_user_activty_by_day.C8056_VIEW_DATETIME ))
                        from t8056_user_activty_by_day
      ;;
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

  measure: average_active_days {
    type: average
    value_format: "#,##0"
    sql: ${TABLE}.active_days ;;
  }

  measure: sum_active_days {
    type: sum
    value_format: "#,##0"
    sql: ${TABLE}.active_days ;;
  }

  measure: weighted_average_active_days {
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
