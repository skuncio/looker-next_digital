view: t8000_content {
  sql_table_name: public.t8000_content ;;

  dimension: c8000_auth {
    type: string
    sql: ${TABLE}.c8000_auth ;;
  }

  dimension: c8000_cid {
    type: string
    sql: ${TABLE}.c8000_cid ;;
  }

  dimension: c8000_content {
    type: string
    sql: ${TABLE}.c8000_content ;;
  }

  dimension: c8000_content_src {
    type: string
    sql: ${TABLE}.c8000_content_src ;;
  }

  dimension: c8000_media {
    type: string
    sql: ${TABLE}.c8000_media ;;
  }

  dimension: c8000_product {
    type: string
    sql: ${TABLE}.c8000_product ;;
  }

  dimension: c8000_region {
    type: string
    sql: ${TABLE}.c8000_region ;;
  }

  dimension: c8000_video_length {
    type: number
    sql: ${TABLE}.c8000_video_length ;;
  }

  dimension: c8000_video_path {
    type: string
    sql: ${TABLE}.c8000_video_path ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
