connection: "nd_snowflake_analytics"

persist_for: "12 hours"

include: "t*.view.lkml"         # include all views in this project
#include: "t8056_user_activity_by_day.view.lkml"
#include: "*.dashboard.lookml"  # include all dashboards in this project
include: "pdt_user_active_days.view"
include: "pdt_user_product_active_days.view"

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }


explore: t8056_user_activity_by_day {
  label: "1) User Activity (30 days by time)"
  view_label: "1. User Activity "
  join: t8022_user_segment_list {
    view_label: "2. User Segment List"
    sql_on: ${t8022_user_segment_list.c8022_nxtuid} = ${t8056_user_activity_by_day.c8056_nxtuid} ;;
    relationship: many_to_one
    type: left_outer
  }
  join: t8057_userprofile_age_gender {
    view_label: "3. User Age & Gender"
    sql_on: ${t8056_user_activity_by_day.c8056_nxtuid} = ${t8057_userprofile_age_gender.c8057_nxtuid} ;;
    relationship: many_to_one
    type: left_outer
  }
  join: pdt_user_active_days {
    view_label: "4. User Active Days"
    sql_on: ${t8056_user_activity_by_day.c8056_nxtuid} = ${pdt_user_active_days.nxtuid} ;;
    relationship: many_to_one
    type: left_outer
  }
  join: pdt_user_product_active_days {
    view_label: "5. Product Active Days"
    sql_on: ${t8056_user_activity_by_day.c8056_region} = ${pdt_user_product_active_days.region}
        and ${t8056_user_activity_by_day.c8056_product} = ${pdt_user_product_active_days.product}
        and ${t8056_user_activity_by_day.c8056_platform} = ${pdt_user_product_active_days.platform}
        and ${t8056_user_activity_by_day.c8056_nxtuid} = ${pdt_user_product_active_days.nxtuid};;
    relationship: many_to_one
    type: left_outer
  }
}



explore: pdt_user_active_days {
  label: "2) User Active Days (last 30 days)"
  view_label: "1. User Active Days"
  join: t8022_user_segment_list {
    view_label: "2. User Segment List"
    foreign_key: pdt_user_active_days.nxtuid
#    sql_on: ${t8022_user_segment_list.c8022_nxtuid} = ${pdt_user_active_days.nxtuid} ;;
#    relationship: one_to_one
#    type: left_outer
  }
  join: t8057_userprofile_age_gender {
    view_label: "3. User Age & Gender"
    foreign_key: pdt_user_active_days.nxtuid
#    sql_on: ${pdt_user_active_days.nxtuid} = ${t8057_userprofile_age_gender.c8057_nxtuid} ;;
#    relationship: one_to_one
#    type: left_outer
  }
  join: t8056_user_activity_by_day {
    view_label: "4. User Activity by Time"
    sql_on:  ${t8056_user_activity_by_day.c8056_nxtuid} = ${pdt_user_active_days.nxtuid} ;;
    relationship: one_to_many
    type:  inner
  }
}

explore: pdt_user_product_active_days {
  label: "3) User by Product Active Days (last 30 days)"
  view_label: "1. User Active Days by Product"
  join: t8022_user_segment_list {
    view_label: "2. User Segment List"
    sql_on: ${t8022_user_segment_list.c8022_nxtuid} = ${pdt_user_product_active_days.nxtuid} ;;
    relationship: many_to_one
    type: left_outer
  }
  join: t8057_userprofile_age_gender {
    view_label: "3. User Age & Gender"
    sql_on: ${pdt_user_product_active_days.nxtuid} = ${t8057_userprofile_age_gender.c8057_nxtuid} ;;
    relationship: many_to_one
    type: left_outer
  }
#  join: t8056_user_activity_by_day {
#    view_label: "4. User Activity by Day"
#    sql_on:   ${t8056_user_activity_by_day.c8056_region} = ${pdt_user_product_active_days.region}
#          and ${t8056_user_activity_by_day.c8056_product} = ${pdt_user_product_active_days.product}
#          and ${t8056_user_activity_by_day.c8056_platform} = ${pdt_user_product_active_days.platform}
#          and ${t8056_user_activity_by_day.c8056_nxtuid} = ${pdt_user_product_active_days.nxtuid} ;;
#    relationship: one_to_many
#    type: inner
#  }
}
