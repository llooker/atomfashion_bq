view: best_day_ever {
  derived_table: {
    sql:
      select day, best_day_vs_today
      from
        (select date_trunc('day',created_at_advance) as day, 'Best Day' as best_day_vs_today
        from atom.order_items
        group by 1,2
        order by sum(sale_price) desc
        limit 1)

      union all

       (select current_date as day, 'Today' as best_day_vs_today)
       ;;
  }

  dimension_group: created {
    label: "Best Day"
    type: time
    timeframes: [date]
    sql: ${TABLE}."DAY" ;;
  }

  dimension: best_day_vs_today {
    label: "Best Day vs Today"
    type: string
    sql: ${TABLE}.best_day_vs_today ;;
  }

}
