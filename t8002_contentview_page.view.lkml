# # You can specify the table name if it's different from the view name:
#   sql_table_name: my_schema_name.t8002_contentview_page
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

view: contentview_page {
  sql_table_name: public.t8002_contentview ;;

  dimension: view_type {
    description: "PAGEVIEW"
    alias: [action]
    type: string
    sql: ${TABLE}.c8002_action ;;
  }

  #  - dimension: adid
  #    type: string
  #    sql: ${TABLE}.c8002_adid

  dimension: app_version {
    view_label: "User"
    type: string
    sql: ${TABLE}.c8002_app_version ;;
  }

  #  - dimension: artid
  #    type: string
  #    sql: ${TABLE}.c8002_artid

  dimension: user_browser {
    view_label: "User"
    type: string
    sql: ${TABLE}.c8002_br ;;
  }

  #   - dimension: bv
  #     type: string
  #     sql: ${TABLE}.c8002_bv

  dimension: category {
    type: string
    sql: ${TABLE}.c8002_category ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.c8002_channel ;;
  }

  dimension: cid {
    #    hidden: true
    type: string
    sql: ${TABLE}.c8002_cid ;;
  }

  dimension: city {
    view_label: "Location"
    type: string
    sql: ${TABLE}.c8002_city ;;
  }

  dimension: country {
    view_label: "Location"
    type: string
    sql: ${TABLE}.c8002_country ;;
  }

  dimension: county {
    view_label: "Location"
    type: string
    sql: ${TABLE}.c8002_county ;;
  }

  dimension_group: view {
    type: time
    timeframes: [
      time,
      date,
      week,
      month,
      year,
      hour_of_day
    ]
    convert_tz: no
    sql: ${TABLE}.c8002_datetime ;;
  }

  dimension: dcc_id {
    view_label: "Location"
    type: string
    sql: ${TABLE}.c8002_dcc_id ;;
  }

  dimension: depth {
    type: number
    sql: ${TABLE}.c8002_depth ;;
  }

  dimension: user_device {
    view_label: "User"
    type: string
    sql: ${TABLE}.c8002_device ;;
  }

  #   - dimension: did
  #     type: string
  #     sql: ${TABLE}.c8002_did

  dimension: district_id {
    view_label: "Location"
    type: string
    sql: ${TABLE}.c8002_district_id ;;
  }

  dimension: dma {
    view_label: "Location"
    type: string
    sql: ${TABLE}.c8002_dma ;;
  }

  dimension: edm {
    type: string
    sql: ${TABLE}.c8002_edm ;;
  }

  #   - dimension: gaid
  #     view_label: User
  #     type: string
  #     sql: ${TABLE}.c8002_gaid

  #   - dimension: gigyaid
  #     view_label: User
  #     type: string
  #     sql: ${TABLE}.c8002_gigyaid

  dimension: ip {
    view_label: "Location"
    type: string
    sql: ${TABLE}.c8002_ip ;;
  }

  dimension: issueid {
    type: string
    sql: ${TABLE}.c8002_issueid ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.c8002_keyword ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.c8002_language ;;
  }

  dimension: lat {
    hidden: yes
    type: number
    sql: ${TABLE}.c8002_lat ;;
  }

  dimension: lon {
    hidden: yes
    type: number
    sql: ${TABLE}.c8002_lon ;;
  }

  dimension: menu {
    type: string
    sql: ${TABLE}.c8002_menu ;;
  }

  dimension: news {
    type: string
    sql: ${TABLE}.c8002_news ;;
  }

  #   - dimension: ngsid
  #     type: string
  #     sql: ${TABLE}.c8002_ngsid
  #
  #   - dimension: nudid
  #     type: string
  #     sql: ${TABLE}.c8002_nudid
  #
  #   - dimension: nxtu
  #     type: string
  #     sql: ${TABLE}.c8002_nxtu

  dimension: user_id {
    view_label: "User"
    type: string
    sql: ${TABLE}.c8002_nxtu_or_did ;;
  }

  dimension: platform {
    #    view_label: User
    type: string
    sql: ${TABLE}.c8002_platform ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.c8002_product ;;
  }

  dimension: referring_url {
    #    view_label: User
    alias: [ref_url]
    type: string
    sql: ${TABLE}.c8002_ref_url ;;
  }

  dimension: region {
    #    view_label: Location
    type: string
    sql: ${TABLE}.c8002_region ;;
  }

  dimension: section {
    type: string
    sql: ${TABLE}.c8002_section ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.c8002_source ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.c8002_site ;;
  }

  dimension: state {
    view_label: "Location"
    type: string
    sql: ${TABLE}.c8002_state ;;
  }

  dimension: street_id {
    view_label: "Location"
    type: string
    sql: ${TABLE}.c8002_street_id ;;
  }

  dimension: subsection {
    type: string
    sql: ${TABLE}.c8002_subsection ;;
  }

  #  - dimension: subsubsection
  #    type: string
  #    sql: ${TABLE}.c8002_subsubsection

  #   - dimension: sz
  #     type: string
  #     sql: ${TABLE}.c8002_sz

  dimension: title {
    type: string
    sql: ${TABLE}.c8002_title ;;
  }

  dimension: user_agent {
    view_label: "User"
    type: string
    sql: ${TABLE}.c8002_ua ;;
  }

  #  - dimension: video_duration
  #    type: number
  #    sql: ${TABLE}.c8002_video_duration

  dimension: zipcode {
    view_label: "Location"
    type: string
    sql: ${TABLE}.c8002_zipcode ;;
  }

  dimension: latitude_longitude {
    alias: [view_location]
    view_label: "Location"
    type: location
    sql_latitude: ${lat} ;;
    sql_longitude: ${lon} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_page_views {
    type: count

    filters: {
      field: view_type
      value: "PAGEVIEW"
    }
  }

  #  - measure: total_video_views
  #    type: count
  #    filters:
  #      view_type: 'VIDEOVIEW'

  #  - measure: average_duration
  #    type: average
  #    sql: ${video_duration}

  #  - measure: distinct_users
  #    view_label: User
  #    type: count_distinct
  #    sql: ${user_id}

  measure: distinct_content {
    type: count_distinct
    sql: ${cid} ;;
    approximate: yes
  }
}
