
- view: wing_testing
  derived_table:
    sql: |
      select * from public.t3203_get_unique_users

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: columns
    type: string
    sql: ${TABLE}.columns

  - dimension: level
    type: number
    sql: ${TABLE}.level

  - dimension: table_name
    type: string
    sql: ${TABLE}.table_name

  - dimension: column_id
    type: string
    sql: ${TABLE}.column_id

  - dimension: where_clause
    type: string
    sql: ${TABLE}.where_clause

  - dimension: total_unique_sql
    type: string
    sql: ${TABLE}.total_unique_sql

  sets:
    detail:
      - columns
      - level
      - table_name
      - column_id
      - where_clause
      - total_unique_sql

