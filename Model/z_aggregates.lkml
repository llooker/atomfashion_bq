include: "/Model/atom_fashion.model.lkml"

# Place in `atom_fashion` model
explore: +order_items {
  aggregate_table: rollup__created_date {
    query: {
      dimensions: [
        order_items.created_date,
        products.brand,
        created_date
      ]
      measures: [order_count, total_sale_price]
      timezone: "America/Los_Angeles"
    }

    materialization: {
      persist_for: "24 hours"
    }
  }
}
