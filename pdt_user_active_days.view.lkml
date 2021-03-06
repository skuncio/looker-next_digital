view: pdt_user_active_days {
    derived_table: {
     sql: SELECT
          T8056_USER_ACTIVITY_BY_DAY.C8056_NXTUID as nxtuid,
          COUNT(DISTINCT (TO_CHAR(TO_DATE(t8056_user_activity_by_day.C8056_VIEW_DATETIME ), 'YYYY-MM-DD')) ) AS active_day_count
          FROM PUBLIC.T8056_USER_ACTIVITY_BY_DAY
          GROUP BY 1
          ;;
          #sql_trigger_value: select 1
          sql_trigger_value: select max(TO_DATE(t8056_user_activity_by_day.C8056_VIEW_DATETIME ))
                            from t8056_user_activity_by_day
          ;;
    }

   dimension: nxtuid {
     description: "Unique ID for each user that has been active"
    primary_key: yes
     type: string
     sql: ${TABLE}.nxtuid ;;
   }

   dimension: active_day_count {
     description: "The total number of active days for each user"
     type: number
     sql: ${TABLE}.active_day_count ;;
   }

  measure: count {
    type: count
    value_format: "#,##0"
  }

  measure: average_active_days {
    type: average
    value_format: "#,##0.00"
    sql: ${TABLE}.active_day_count ;;
  }

  measure: sum_active_days {
    type: sum
    value_format: "#,##0"
    sql: ${TABLE}.active_day_count ;;
  }

  measure: distinct_users {
    type: count_distinct
    value_format: "#,##0"
    sql: ${nxtuid} ;;
  }
}

#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
