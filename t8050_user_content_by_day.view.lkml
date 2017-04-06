view: t8050_user_content_by_day {
  sql_table_name: public.t8050_user_content_by_day ;;

  dimension: c8050_action {
    type: string
    sql: ${TABLE}.c8050_action ;;
  }

  dimension: c8050_app_version {
    type: string
    sql: ${TABLE}.c8050_app_version ;;
  }

  dimension: c8050_auto {
    type: string
    sql: ${TABLE}.c8050_auto ;;
  }

  dimension: c8050_average_duration {
    type: number
    sql: ${TABLE}.c8050_average_duration ;;
  }

  dimension: c8050_category {
    type: string
    sql: ${TABLE}.c8050_category ;;
  }

  dimension: c8050_channel {
    type: string
    sql: ${TABLE}.c8050_channel ;;
  }

  dimension: c8050_cid {
    type: string
    sql: ${TABLE}.c8050_cid ;;
  }

  dimension_group: c8050_datetime {
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
    sql: ${TABLE}.c8050_datetime ;;
  }

  dimension: c8050_news {
    type: string
    sql: ${TABLE}.c8050_news ;;
  }

  dimension: c8050_nxtu_or_did {
    type: string
    sql: ${TABLE}.c8050_nxtu_or_did ;;
  }

  dimension: c8050_platform {
    type: string
    sql: ${TABLE}.c8050_platform ;;
  }

  dimension: c8050_product {
    type: string
    sql: ${TABLE}.c8050_product ;;
  }

  dimension: c8050_region {
    type: string
    sql: ${TABLE}.c8050_region ;;
  }

  dimension: c8050_section {
    type: string
    sql: ${TABLE}.c8050_section ;;
  }

  dimension: c8050_source {
    type: string
    sql: ${TABLE}.c8050_source ;;
  }

  dimension: c8050_total_page_views {
    hidden: yes
    type: number
    sql: ${TABLE}.c8050_total_page_views ;;
  }

  dimension: c8050_total_video_views {
    type: number
    sql: ${TABLE}.c8050_total_video_views ;;
  }

########## measures #############

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_page_views {
    type: sum
    #value_format: '#,##0'
    value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
    sql: ${c8050_total_page_views} ;;
  }


}
