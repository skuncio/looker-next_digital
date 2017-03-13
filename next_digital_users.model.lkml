connection: "next_prd_redshift"

persist_for: "12 hours"

# include all views in this project
include: "*.view"

# include all dashboards in this project
include: "*.dashboard"

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# - explore: order_items
#   joins:
#     - join: orders
#       sql_on: ${orders.id} = ${order_items.order_id}
#     - join: users
#       sql_on: ${users.id} = ${orders.user_id}

explore: t8000_content {}

explore: t8001_user_crossref {
  join: t8014_user_campaign {
    view_label: "Gender and Age Data"
    sql_on: ${t8001_user_crossref.c8001_nxtu_or_did} = ${t8014_user_campaign.c8014_nxtu_or_did} ;;
    relationship: one_to_many
    type: left_outer
  }
}

explore: t8014_user_campaign {}

explore: t8002_contentview {}

explore: t1016_cid_title {}

explore: t4003_animated_cid {
  sql_always_where: ${c4003_imp_type} = 'V' ;;

  join: t8000_content {
    view_label: "Content Object Meta Data"
    sql_on: ${t4003_animated_cid.c4003_cid} = ${t8000_content.c8000_cid} ;;
    relationship: one_to_one
    type: left_outer
  }
}

explore: t1021_cid_title_day {}

explore: t8015_contentview_agg {}

explore: t1023_animated_video {}

explore:  t1025_reg_prod_cid_title {}

#  joins:
#  - join: t3016_seg_agg_cid_day
#    view_label: Platform
#    sql_on: ${t1023_animated_video.c1023_cid} = ${t3016_seg_agg_cid_day.c3016_cid} and ${t3016_seg_agg_cid_day.c3016_imp_type} = 'V' and ${t3016_seg_agg_cid_day.c3016_product} = ${t1023_animated_video.c1023_product} and ${t3016_seg_agg_cid_day.c3016_region} = ${t1023_animated_video.c1023_region} and ${t3016_seg_agg_cid_day.c3016_date_id_date} = ${t1023_animated_video.c1023_date_id_date}
#    relationship: many_to_one
#    type: left_outer
#  - join: t1021_cid_title_day
#    view_label: Title
#    sql_on: ${t1023_animated_video.c1023_cid} = ${t1021_cid_title_day.c1021_cid} and ${t1021_cid_title_day.c1021_imp_type} = 'V' # and ${t1021_cid_title_day.c1021_product} = ${t1023_animated_video.c1023_product} and ${t1021_cid_title_day.c1021_region} = ${t1023_animated_video.c1023_region} and ${t1021_cid_title_day.c1021_update_date} = ${t1023_animated_video.c1023_date_id_date}
#    relationship: many_to_one
#    type: left_outer

explore: t3016_seg_agg_cid_day {
  join: t1023_animated_video {
    view_label: "Animated Videos"
    sql_on: ${t3016_seg_agg_cid_day.c3016_cid} = ${t1023_animated_video.c1023_cid} and ${t3016_seg_agg_cid_day.c3016_imp_type} = 'V' and ${t3016_seg_agg_cid_day.c3016_product} = ${t1023_animated_video.c1023_product} and ${t3016_seg_agg_cid_day.c3016_region} = ${t1023_animated_video.c1023_region} and ${t3016_seg_agg_cid_day.c3016_date_id_date} = ${t1023_animated_video.c1023_date_id_date} ;;
    relationship: many_to_one
    type: left_outer
  }
}

explore: sql_users_both_age_gender {}

explore: t5000_open {}

explore: t5001_first_open {}

explore: t5002_push_body {}

explore: t5003_send {}

explore: t5004_uninstall {}

explore: t8020_user_content_preference {}

explore: t8021_user_churning_prediction {
  join: t8001_user_crossref {
    view_label: "User Cross Reference"
    sql_on: ${t8001_user_crossref.c8001_adid} = ${t8021_user_churning_prediction.c8021_adid} ;;
    relationship: one_to_one
    type: left_outer
  }
}

#- explore: sql_runner_query_adid_analysis

#- explore: t8003_geo_location

#- explore: t8004_regestered_user

#- explore: t8005_content_consumption

#- explore: t8006_region_product

#- explore: t8007_site

#- explore: t8008_channel

#- explore: t8009_section

#- explore: t8010_subsection

#- explore: t8011_subsubsection

#- explore: t8012_app
