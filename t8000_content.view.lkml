view: content {
  sql_table_name: public.t8000_content ;;
  #   - dimension: c8000_auth
  #     type: string
  #     sql: ${TABLE}.c8000_auth

  dimension: cid {
    hidden: yes
    type: string
    sql: ${TABLE}.c8000_cid ;;
  }

  dimension: content_type {
    type: string
    sql: ${TABLE}.c8000_content ;;
  }

  dimension: content_auth {
    type: string
    sql: ${TABLE}.c8000_auth ;;
  }

  dimension: media {
    type: string
    sql: ${TABLE}.c8000_media ;;
  }

  dimension: product {
    hidden: yes
    type: string
    sql: ${TABLE}.c8000_product ;;
  }

  dimension: region {
    hidden: yes
    type: string
    sql: ${TABLE}.c8000_region ;;
  }

#  dimension: content_src {
#    type: string
#    sql: ${TABLE}.c8000_content_src ;;
#  }

  dimension: video_length {
    type: number
    sql: ${TABLE}.c8000_video_length ;;
  }

  dimension: video_path {
    type: string
    sql: ${TABLE}.c8000_video_path ;;
  }
}

#   - measure: count
#     type: count
#     drill_fields: []

#   - measure: distinct_content
#     type: count_distinct
#     sql: ${cid}
