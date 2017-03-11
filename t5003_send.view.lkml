view: t5003_send {
  sql_table_name: public.t5003_send ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: body_group_id {
    type: string
    sql: ${TABLE}.body_group_id ;;
  }

  dimension: body_push_id {
    type: string
    sql: ${TABLE}.body_push_id ;;
  }

  dimension: body_variant_id {
    type: string
    sql: ${TABLE}.body_variant_id ;;
  }

  dimension: device_amazon_channel {
    type: string
    sql: ${TABLE}.device_amazon_channel ;;
  }

  dimension: device_android_channel {
    type: string
    sql: ${TABLE}.device_android_channel ;;
  }

  dimension: device_ios_channel {
    type: string
    sql: ${TABLE}.device_ios_channel ;;
  }

  dimension: device_named_user_id {
    type: string
    sql: ${TABLE}.device_named_user_id ;;
  }

  dimension_group: occurred {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      hour_of_day
    ]
    sql: ${TABLE}.occurred ;;
  }

  dimension: offset_value {
    type: string
    sql: ${TABLE}.offset_value ;;
  }

  dimension_group: processed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      hour_of_day
    ]
    sql: ${TABLE}.processed ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
