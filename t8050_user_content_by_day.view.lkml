view: t8050_user_content_by_day {
  sql_table_name: public.t8050_user_content_by_day ;;

  dimension: view_type {
    description: "PAGEVIEW or VIDEOVIEW"
    alias: [action]
    type: string
    sql: ${TABLE}.c8050_action ;;
  }

#  dimension: content_type {
#    type: string
  #   hidden: yes
#    sql: ${TABLE}.c80505_action ;;

#    case: {
#      when: {
#        sql: (${TABLE}.c8050_cid is null) or (${TABLE}.c8050_cid = 0)  ;;
#        label: "HOME-INDEX"
#      }

#      when: {
#        sql: (${TABLE}.c8050_action = 'PAGEVIEW') and (${TABLE}.c8050_cid is not null)  ;;
#        label: "ARTICLE"
#      }

#      when: {
#        sql: (${TABLE}.c8050_action = 'VIDEOVIEW') and (${TABLE}.c8050_cid is not null) ;;
#        label: "VIDEO"
#      }

#      when: {
#        sql: true ;;
#        label: "unknown"
#      }
#    }
#  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.c8050_app_version ;;
  }

  dimension: auto {
    type: string
    sql: ${TABLE}.c8050_auto ;;
  }

  dimension: c8050_average_video_duration {
    alias: [c8050_average_duration]
    hidden: yes
    type: number
    sql: ${TABLE}.c8050_average_video_duration ;;
}

dimension: c8050_average_page_duration {
  hidden: yes
  type: number
  sql: ${TABLE}.c8050_average_page_duration ;;
}

dimension: category {
  type: string
  sql: ${TABLE}.c8050_category ;;
}

dimension: channel {
  type: string
  sql: ${TABLE}.c8050_channel ;;
}

dimension: content_id {
  type: string
  sql: ${TABLE}.c8050_cid ;;
}

dimension: content_type {
  type: string
  sql: ${TABLE}.C8050_CONTENT ;;
}

dimension_group: view {
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

dimension: date_viewed {
  group_label: "view"
  sql: ${TABLE}.c8050_datetime ;;
}

dimension: news {
  type: string
  sql: ${TABLE}.c8050_news ;;
}

dimension: nxtuid {
  type: string
  sql: ${TABLE}.c8050_nxtu_or_did ;;
}

dimension: platform {
  type: string
  sql: ${TABLE}.c8050_platform ;;
}

dimension: product {
  type: string
  sql: ${TABLE}.c8050_product ;;
}

dimension: region {
  type: string
  sql: ${TABLE}.c8050_region ;;
}

dimension: section {
  type: string
  sql: ${TABLE}.c8050_section ;;
}

dimension: source {
  type: string
  sql: ${TABLE}.c8050_source ;;
}

dimension: subsection {
  type: string
  sql: ${TABLE}.c8050_subsection ;;
}

dimension: c8050_total_page_views {
  hidden: yes
  type: number
  sql: ${TABLE}.c8050_total_page_views ;;
}

dimension: c8050_total_video_views {
  hidden: yes
  type: number
  sql: ${TABLE}.c8050_total_video_views ;;
}

########## measures #############

measure: count {
  type: count
#    approximate: yes
  drill_fields: []
}

measure: total_page_views {
  type: sum
  #value_format: '#,##0'
  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
  sql: ${c8050_total_page_views} ;;
}

measure: average_page_duration {
  type: average
  value_format: "#,##0"
  sql: ${c8050_average_page_duration} ;;
  filters: {
    field: view_type
    value: "PAGEVIEW"
  }
}

measure: total_video_views {
  type: sum
  #value_format: '#,##0'
  value_format: "[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0"
  sql: ${c8050_total_video_views} ;;
}

measure: average_video_duration {
  alias: [average_duration]
  type: average
  value_format: "#,##0"
  sql: ${c8050_average_video_duration} ;;
  filters: {
    field: view_type
    value: "VIDEOVIEW"
  }
}

measure: distinct_users {
  #    view_label: User
  type: count_distinct
  sql: ${nxtuid} ;;
#    approximate: yes
}

measure: distinct_content {
  #    view_label: Content
  type: count_distinct
  sql: ${content_id} ;;
#    approximate: yes
}

}
