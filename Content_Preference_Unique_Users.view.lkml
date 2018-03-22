view: content_preference_unique_users {
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
#}

# view: content_preference_unique_users {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
#view: sql_runner_query {
  derived_table: {
    sql: SELECT
      "t8020_user_content_preference.c8020_preference",
      "t8020_user_content_preference.c8020_platform",
      "t8020_user_content_preference.view_count_sum_1",
      APPROXIMATE COUNT(DISTINCT "t8020_user_content_preference.c8020_nxtuid" ) AS "distinct_users"

      FROM (
      SELECT
        t8020_user_content_preference.c8020_nxtuid  AS "t8020_user_content_preference.c8020_nxtuid",
        t8020_user_content_preference.c8020_preference  AS "t8020_user_content_preference.c8020_preference",
        t8020_user_content_preference.c8020_platform  AS "t8020_user_content_preference.c8020_platform",
        COALESCE(SUM(t8020_user_content_preference.c8020_view_count ), 0) AS "t8020_user_content_preference.view_count_sum_1"
      FROM public.t8020_user_content_preference  AS t8020_user_content_preference

      WHERE ((((t8020_user_content_preference.c8020_activity_date ) >= (TIMESTAMP '2017-03-18') AND (t8020_user_content_preference.c8020_activity_date ) < (TIMESTAMP '2017-04-17')))) AND (t8020_user_content_preference.c8020_preference = 'ENTERTAINMENT') AND (t8020_user_content_preference.c8020_product = 'ADAILY') AND (t8020_user_content_preference.c8020_region = 'HK')
      GROUP BY 1,2,3
      )

      GROUP BY 1,2,3
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: t8020_user_content_preference_c8020_preference {
    type: string
    sql: ${TABLE}."t8020_user_content_preference.c8020_preference" ;;
  }

  dimension: t8020_user_content_preference_c8020_platform {
    type: string
    sql: ${TABLE}."t8020_user_content_preference.c8020_platform" ;;
  }

  dimension: t8020_user_content_preference_view_count_sum_1 {
    type: number
    sql: ${TABLE}."t8020_user_content_preference.view_count_sum_1" ;;
  }

  dimension: distinct_users {
    type: number
    sql: ${TABLE}.distinct_users ;;
  }

  set: detail {
    fields: [t8020_user_content_preference_c8020_preference, t8020_user_content_preference_c8020_platform, t8020_user_content_preference_view_count_sum_1, distinct_users]
  }
}
