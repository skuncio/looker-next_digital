view: content_preference_seg_total_views {
  derived_table: {
    sql: SELECT
      "t8020_user_content_preference.c8020_preference",
      "t8020_user_content_preference.c8020_platform",
      "t8020_user_content_preference.view_count_sum_1",
        CASE
      WHEN (t8050_user_content_by_day.c8050_cid is null) or (t8050_user_content_by_day.c8050_cid = 0)   THEN 'HOME-INDEX'
      WHEN (t8050_user_content_by_day.c8050_action = 'PAGEVIEW') and (t8050_user_content_by_day.c8050_cid is not null)   THEN 'ARTICLE'
      WHEN (t8050_user_content_by_day.c8050_action = 'VIDEOVIEW') and (t8050_user_content_by_day.c8050_cid is not null)  THEN 'VIDEO'
      WHEN true  THEN 'unknown'
      END AS "t8050_user_content_by_day.content_type",
      COALESCE(SUM(t8050_user_content_by_day.c8050_total_page_views ), 0) AS "t8050_user_content_by_day.total_page_views",
      COALESCE(SUM(t8050_user_content_by_day.c8050_total_video_views ), 0) AS "t8050_user_content_by_day.total_video_views"

      FROM (
      SELECT
        t8020_user_content_preference.c8020_nxtuid  AS "t8020_user_content_preference.c8020_nxtuid",
        t8020_user_content_preference.c8020_preference  AS "t8020_user_content_preference.c8020_preference",
        t8020_user_content_preference.c8020_platform  AS "t8020_user_content_preference.c8020_platform",
        COALESCE(SUM(t8020_user_content_preference.c8020_view_count ), 0) AS "t8020_user_content_preference.view_count_sum_1"
      FROM public.t8020_user_content_preference  AS t8020_user_content_preference

      WHERE ((((t8020_user_content_preference.c8020_activity_date ) >= (TIMESTAMP '2017-03-18') AND (t8020_user_content_preference.c8020_activity_date ) < (TIMESTAMP '2017-04-17')))) AND (t8020_user_content_preference.c8020_preference = 'ENTERTAINMENT') AND (t8020_user_content_preference.c8020_product = 'ADAILY') AND (t8020_user_content_preference.c8020_region = 'HK')
      GROUP BY 1,2,3
      )

      LEFT JOIN public.t8050_user_content_by_day AS t8050_user_content_by_day
      ON "t8020_user_content_preference.c8020_nxtuid" = t8050_user_content_by_day.c8050_nxtu_or_did
      WHERE ((((t8050_user_content_by_day.c8050_datetime ) >= (CONVERT_TIMEZONE('Hongkong', 'UTC', TIMESTAMP '2017-03-18')) AND (t8050_user_content_by_day.c8050_datetime ) < (CONVERT_TIMEZONE('Hongkong', 'UTC', TIMESTAMP '2017-04-17'))))) AND (t8050_user_content_by_day.c8050_product = 'Apple Daily') AND (t8050_user_content_by_day.c8050_region = 'HK')

      GROUP BY 1,2,3,4
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: t8020_user_content_preference_c8020_preference {
    type: string
    sql: ${TABLE}."t8020_user_content_preference.c8020_preference" ;;
  }

  dimension: t8020_user_content_preference_c8020_platform {
    type: string
    sql: ${TABLE}."t8020_user_content_preference.c8020_platform" ;;
  }

  dimension: t8020_user_content_preference_view_count_sum_1 {
    type: number
    sql: ${TABLE}."t8020_user_content_preference.view_count_sum_1" ;;
  }

  dimension: t8050_user_content_by_day_content_type {
    type: string
    sql: ${TABLE}."t8050_user_content_by_day.content_type" ;;
  }

  dimension: t8050_user_content_by_day_total_page_views {
    type: number
    sql: ${TABLE}."t8050_user_content_by_day.total_page_views" ;;
  }

  dimension: t8050_user_content_by_day_total_video_views {
    type: number
    sql: ${TABLE}."t8050_user_content_by_day.total_video_views" ;;
  }

  set: detail {
    fields: [
      t8020_user_content_preference_c8020_preference,
      t8020_user_content_preference_c8020_platform,
      t8020_user_content_preference_view_count_sum_1,
      t8050_user_content_by_day_content_type,
      t8050_user_content_by_day_total_page_views,
      t8050_user_content_by_day_total_video_views
    ]
  }
}
