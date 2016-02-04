- connection: next_dev_redshift

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project


# - explore: order_items
#   joins:
#     - join: orders
#       sql_on: ${orders.id} = ${order_items.order_id}
#     - join: users
#       sql_on: ${users.id} = ${orders.user_id}

- explore: contentview
  joins:
      - join: content
        sql_on: ${contentview.cid} = ${content.cid}
        relationship: many_to_one
        
- explore: video_pdt     
  view_label: Video Views
  
- explore: page_pdt     
  view_label: Page Views
  
- explore: view_aggregate  