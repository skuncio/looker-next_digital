- view: t5000_open
  sql_table_name: public.t5000_open
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: body_last_delivered_group_id
    type: string
    sql: ${TABLE}.body_last_delivered_group_id

  - dimension: body_last_delivered_push_id
    type: string
    sql: ${TABLE}.body_last_delivered_push_id

  - dimension_group: body_last_delivered
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, hour_of_day]
    sql: ${TABLE}.body_last_delivered_time

  - dimension: body_last_delivered_variant_id
    type: string
    sql: ${TABLE}.body_last_delivered_variant_id

  - dimension: body_session_id
    type: string
    sql: ${TABLE}.body_session_id

  - dimension: body_triggering_push_group_id
    type: string
    sql: ${TABLE}.body_triggering_push_group_id

  - dimension: body_triggering_push_push_id
    type: string
    sql: ${TABLE}.body_triggering_push_push_id

  - dimension_group: body_triggering_push
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, hour_of_day]
    sql: ${TABLE}.body_triggering_push_time

  - dimension: body_triggering_push_variant_id
    type: string
    sql: ${TABLE}.body_triggering_push_variant_id

  - dimension: device_amazon_channel
    type: string
    sql: ${TABLE}.device_amazon_channel

  - dimension: device_android_channel
    type: string
    sql: ${TABLE}.device_android_channel

  - dimension: device_ios_channel
    type: string
    sql: ${TABLE}.device_ios_channel

  - dimension: device_named_user_id
    type: string
    sql: ${TABLE}.device_named_user_id

  - dimension_group: occurred
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, hour_of_day]
    sql: ${TABLE}.occurred

  - dimension: offset_value
    type: string
    sql: ${TABLE}.offset_value

  - dimension_group: processed
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, hour_of_day]
    sql: ${TABLE}.processed

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [id]

