include: "atom_fashion.model"
explore: +order_items {

  aggregate_table: rollup__created_date__products_brand__products_category {
    query: {
      dimensions: [
        "products.brand",
        "order_items.created_date",
        "products.category"
      ]
      measures: [order_count, total_sale_price]
      filters: [order_items.created_date: "24 months"]
#       timezone: "America/Los_Angeles"
    }

    materialization: {
      datagroup_trigger: every_hour
    }
  }


}
