- connection: next_prd_redshift

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# - explore: order_items
#   joins:
#     - join: orders
#       sql_on: ${orders.id} = ${order_items.order_id}
#     - join: users
#       sql_on: ${users.id} = ${orders.user_id}

- explore: t8000_content

- explore: t8001_user_crossref

- explore: t8014_user_campaign

- explore: t8002_contentview

- explore: t1016_cid_title

- explore: t4003_animated_cid
  sql_always_where:  ${c4003_imp_type} = 'V'

- explore: t1021_cid_title_day  

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

