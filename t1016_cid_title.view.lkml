view: t1016_cid_title {
  sql_table_name: public.t1016_cid_title ;;
  # # You can specify the table name if it's different from the view name:
  #   sql_table_name: my_schema_name.t1016
  #
  #  fields:
  # #     Define your dimensions and measures here, like this:
  #     - dimension: id
  #       type: number
  #       sql: ${TABLE}.id
  #
  #     - dimension: created
  #       type: time
  #       timeframes: [date, week, month, year]
  #       sql: ${TABLE}.created_at
  #
  #     - measure: count
  #       type: count


  # # Or, you could make this view a derived table, like this:
  #   derived_table:
  #     sql: |
  #       SELECT
  #         user_id as user_id
  #         , COUNT(*) as lifetime_orders
  #         , MAX(orders.created_at) as most_recent_purchase_at
  #       FROM orders
  #       GROUP BY user_id
  #
  #  fields:
  # #     Define your dimensions and measures here, like this:
  #     - dimension: lifetime_orders
  #       type: number
  #       sql: ${TABLE}.lifetime_orders
  #
  #     - dimension: most_recent_purchase
  #       type: time
  #       timeframes: [date, week, month, year]
  #       sql: ${TABLE}.most_recent_purchase_at
  #
  #     - measure: total_lifetime_orders
  #       type: sum
  #       sql: ${lifetime_orders}

  dimension: c1016_cid {
    type: string
    sql: ${TABLE}.c1016_cid ;;
  }

  dimension: c1016_title {
    type: string
    sql: ${TABLE}.c1016_title ;;
  }

  dimension: c1016_imp_type {
    type: string
    sql: ${TABLE}.c1016_imp_type ;;
  }

  dimension_group: c1016_date_id {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.c1016_date_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
