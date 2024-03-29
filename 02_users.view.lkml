view: users {
  sql_table_name: looker-private-demo.ecomm.atom_users ;;

  ## ATOM.VIEW SQL
  #   create view looker-private-demo.ecomm.users as
  #     select *,
  #     DATEADD(d,1,created_at) as created_at_advance
  #     from ecomm.users


  ## Demographics ##

  dimension: id {
    primary_key: yes
    type: number
    value_format_name: id
    sql: ${TABLE}.id ;;
    tags: ["atom-notification"]
  }

  dimension: first_name {
    hidden: yes
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    hidden: yes
    sql: ${TABLE}.last_name ;;
  }

  dimension: name {
    sql: initcap(${first_name} || ' ' || ${last_name}) ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: age_tier {
    type: tier
    description: "User Ages tiered by the following grouping [0,10,20,30,40,50,60,70]"
    tiers: [
      0,
      10,
      20,
      30,
      40,
      50,
      60,
      70
    ]
    style: integer
    sql: ${age} ;;
  }

  dimension: generation {
    order_by_field: generation_order
    type: string
    sql: CASE WHEN ${age} <= 25 THEN 'Gen Z'
              WHEN ${age} <= 40 THEN 'Millenials'
              WHEN ${age} <= 55 THEN 'Gen X'
              WHEN ${age} <= 76 THEN 'Baby Boomers'
            ELSE 'Silent'
            END;;
  }

  dimension: generation_order {
    hidden: yes
    type: number
    sql: CASE WHEN ${generation} = 'Gen Z' THEN 5
              WHEN ${generation} = 'Millenials' THEN 4
              WHEN ${generation} = 'Gen X' THEN 3
              WHEN ${generation} = 'Baby Boomers' THEN 2
            ELSE 1
            END;;
  }

  dimension: gender {
    sql: ${TABLE}.gender ;;
  }

  dimension: gender_short {
    sql: LOWER(LEFT(${gender},1)) ;;
  }

  dimension: user_image {
    sql: ${image_file} ;;
    html: <img src="{{ value }}" width="220" height="220"/>;;
  }

  dimension: email {
    sql: ${TABLE}.email ;;
    tags: ["atom-notification"]
    action: {
      label: "Email Promotion to Customer"
      url: "https://desolate-refuge-53336.herokuapp.com/posts"
      icon_url: "https://sendgrid.com/favicon.ico"
      param: {
        name: "some_auth_code"
        value: "abc123456"
      }
      form_param: {
        name: "Subject"
        required: yes
        default: "Thank you {{ users.name._value }}"
      }
      form_param: {
        name: "Body"
        type: textarea
        required: yes
        default:
        "Dear {{ users.first_name._value }},

        Thanks for your loyalty to the Look.  We'd like to offer you a 10% discount
        on your next purchase!  Just use the code LOYAL when checking out!

        Your friends at the Look"
      }
    }
    required_fields: [name]
  }

  dimension: image_file {
    hidden: yes
    sql: ('http://www.looker.com/_content/docs/99-hidden/images/'||${gender_short}||'.jpg') ;;
  }

  ## Demographics ##

  dimension: city {
    sql: ${TABLE}.city ;;
  }

  dimension: state {
    full_suggestions: yes
    map_layer_name: us_states
    sql: ${TABLE}.state ;;
  }

  dimension: state_region {
    full_suggestions: yes
    sql: ${TABLE}.state ;;

    case: {
      when: {
        sql: ${state} in ('Connecticut', 'Maine', 'Massachusetts', 'New Hampshire',
          'Rhode Island', 'Vermont', 'New Jersey', 'New York', 'Pennsylvania', 'Delaware');;
        label: "Northeast"
      }
      when: {
        sql: ${state} in ('Illinois', 'Indiana', 'Michigan', 'Ohio', 'Wisconsin'
          , 'Iowa', 'Kansas', 'Minnesota', 'Missouri', 'Nebraska', 'North Dakota', 'South Dakota');;
        label: "Midwest"
      }
      when: {
        sql: ${state} in ('Florida', 'Georgia', 'Maryland', 'North Carolina', 'South Carolina', 'Virginia'
                  , 'District of Columbia', 'West Virginia'
                  , 'Alabama', 'Kentucky', 'Mississippi', 'Tennessee'
                  , 'Arkansas', 'Louisiana', 'Oklahoma', 'Texas');;
        label: "South"
      }
      when: {
        sql: ${state} in ('Arizona', 'Colorado', 'Idaho', 'Montana', 'Nevada', 'New Mexico', 'Utah', 'Wyoming');;
        label: "Mountain"
      }
      when: {
        sql: ${state} in ('Alaska', 'California', 'Hawaii', 'Oregon', 'Washington');;
        label: "Pacific"
      }
      else: "Not In US"
    }
    alpha_sort: yes
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  dimension: country {
    sql: ${TABLE}.country ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  dimension: approx_location {
    type: location
    sql_latitude: round(${TABLE}.latitude,1) ;;
    sql_longitude: round(${TABLE}.longitude,1) ;;
  }

  ## Other User Information ##

  dimension_group: created {
    type: time
    description: "Date a user account was first created"
    timeframes: [time, date, week, month, raw]
    sql: ${TABLE}.created_at_advance ;;
  }

  dimension: history {
    sql: ${TABLE}.id ;;
    html: <a href="/explore/thelook/order_items?fields=order_items.detail*&f[users.id]={{ value }}">Order History</a>
      ;;
  }

  dimension: traffic_source {
    sql: ${TABLE}.traffic_source ;;
  }

  ## MEASURES ##

  measure: count {
    description: "Count of the distinct number of Users"
    type: count
    drill_fields: [detail*]
  }

  measure: count_percent_of_total {
    label: "Count (Percent of Total)"
    type: percent_of_total
    value_format_name: decimal_1
    sql: ${count} ;;
  }

  measure: average_age {
    type: average
    value_format_name: decimal_2
    sql: ${age} ;;
  }

  dimension: is_user_created_in_last_60_days {
    hidden: yes
    type: yesno
    sql: date_diff( ${created_date}, current_date(), days) < 60 ;;
  }

  dimension: is_user_created_in_last_month {
    hidden: yes
    type: yesno
    sql: date_diff( ${created_date}, current_date(), days) < 30 ;;
  }

  dimension: is_user_created_in_last_day {
    hidden: yes
    type: yesno
    sql: ${created_date} = current_date()-7 ;;
  }

  measure: count_users_this_month {
    hidden: yes
    type: count

    filters: {
      field: is_user_created_in_last_month
      value: "yes"
    }
    drill_fields: [detail*]
  }

  measure: count_users_today {
    hidden: yes
    type: count

    filters: {
      field: is_user_created_in_last_day
      value: "yes"
    }
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      id,
      name,
      email,
      age,
      created_date,
      orders.count,
      order_items.count
    ]
  }

  set: simple {
    fields: [
      id,
      name,
      email,
      age,
      age_tier,
      gender,
      created_date,
      count
    ]
  }
}
