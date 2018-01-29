view: t5009_ua_device_crossref_bq {
  sql_table_name: UA_CONNECT.t5009_ua_device_crossref ;;

  dimension: c5009_adid {
    type: string
    sql: ${TABLE}.c5009_ADID ;;
  }

  dimension: c5009_channel_id {
    type: string
    sql: ${TABLE}.c5009_channel_id ;;
  }

  dimension: c5009_device_attributes {
    type: string
    sql: ${TABLE}.c5009_device_attributes ;;
  }

  dimension_group: c5009_occurred {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}.c5009_occurred AS TIMESTAMP) ;;
  }

  dimension: c5009_platform {
    type: string
    sql: ${TABLE}.c5009_platform ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
