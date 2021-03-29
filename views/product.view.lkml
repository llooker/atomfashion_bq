view: product {
  sql_table_name: `looker-private-demo.salesforce.product`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: commission_family_c {
    type: string
    sql: ${TABLE}.COMMISSION_FAMILY_C ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}.CREATED_BY_ID ;;
  }

  dimension: family {
    type: string
    sql: ${TABLE}.FAMILY ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.IS_ACTIVE ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.IS_DELETED ;;
  }

  dimension: list_price {
    type: number
    sql: ${TABLE}.list_price ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: product__type___c {
    type: string
    sql: ${TABLE}.PRODUCT__TYPE___C ;;
  }

  dimension: user_type_c {
    type: yesno
    sql: ${TABLE}.USER_TYPE_C ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
