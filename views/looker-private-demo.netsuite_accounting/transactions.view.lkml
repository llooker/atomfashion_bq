# The name of this view in Looker is "Transactions"
view: transactions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-private-demo.netsuite_accounting.transactions`
    ;;
  drill_fields: [intercompany_transaction_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: intercompany_transaction_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.intercompany_transaction_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " Fivetran Deleted" in Explore.

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._fivetran_deleted ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._fivetran_synced ;;
  }

  dimension: account_based_number {
    type: string
    sql: ${TABLE}.account_based_number ;;
  }

  dimension: accounting_book_id {
    type: string
    sql: ${TABLE}.accounting_book_id ;;
  }

  dimension: accounting_period_id {
    type: number
    sql: ${TABLE}.accounting_period_id ;;
  }

  dimension: acct_corp_card_expenses_id {
    type: string
    sql: ${TABLE}.acct_corp_card_expenses_id ;;
  }

  dimension: amount_unbilled {
    type: number
    sql: ${TABLE}.amount_unbilled ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount_unbilled {
    type: sum
    sql: ${amount_unbilled} ;;
  }

  measure: average_amount_unbilled {
    type: average
    sql: ${amount_unbilled} ;;
  }

  dimension: assy_dept {
    type: string
    sql: ${TABLE}.assy_dept ;;
  }

  dimension: bill_pay_transaction {
    type: string
    sql: ${TABLE}.bill_pay_transaction ;;
  }

  dimension: billaddress {
    type: string
    sql: ${TABLE}.billaddress ;;
  }

  dimension: billing_account_id {
    type: string
    sql: ${TABLE}.billing_account_id ;;
  }

  dimension: billing_instructions {
    type: string
    sql: ${TABLE}.billing_instructions ;;
  }

  dimension: bulk_submission_id {
    type: string
    sql: ${TABLE}.bulk_submission_id ;;
  }

  dimension: carrier {
    type: string
    sql: ${TABLE}.carrier ;;
  }

  dimension_group: closed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.closed ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: company_status_id {
    type: string
    sql: ${TABLE}.company_status_id ;;
  }

  dimension: contacts {
    type: string
    sql: ${TABLE}.contacts ;;
  }

  dimension: contract_cost_amount {
    type: string
    sql: ${TABLE}.contract_cost_amount ;;
  }

  dimension: contract_defer_expense_acct_id {
    type: string
    sql: ${TABLE}.contract_defer_expense_acct_id ;;
  }

  dimension: contract_expense_acct_id {
    type: string
    sql: ${TABLE}.contract_expense_acct_id ;;
  }

  dimension: contract_expense_src_acct_id {
    type: string
    sql: ${TABLE}.contract_expense_src_acct_id ;;
  }

  dimension: controller_approval {
    type: string
    sql: ${TABLE}.controller_approval ;;
  }

  dimension_group: controller_approval {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.controller_approval_date ;;
  }

  dimension: controller_id {
    type: string
    sql: ${TABLE}.controller_id ;;
  }

  measure: total_distinct_controllers {
    type: count_distinct
    sql: ${controller_id} ;;
    drill_fields: [create_date, closed_date, controller_id, controller_approval]
  }

  dimension_group: create {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.create_date ;;
  }

  dimension: created_by_id {
    type: number
    sql: ${TABLE}.created_by_id ;;
  }

  dimension: created_from_id {
    type: number
    sql: ${TABLE}.created_from_id ;;
  }

  dimension: currency_id {
    type: number
    sql: ${TABLE}.currency_id ;;
  }

  dimension: custom_form_id {
    type: number
    sql: ${TABLE}.custom_form_id ;;
  }

  dimension: customer_priority_id {
    type: string
    sql: ${TABLE}.customer_priority_id ;;
  }

  dimension_group: date_bid_close {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_bid_close ;;
  }

  dimension_group: date_bid_open {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_bid_open ;;
  }

  dimension_group: date_contract_cost_accrual {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_contract_cost_accrual ;;
  }

  dimension_group: date_deleted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_deleted ;;
  }

  dimension_group: date_last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_last_modified ;;
  }

  dimension: delivery_instructions {
    type: string
    sql: ${TABLE}.delivery_instructions ;;
  }

  dimension_group: due {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.due_date ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_0 {
    type: string
    sql: ${TABLE}.email_0 ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.end_date ;;
  }

  dimension: entity_id {
    type: number
    sql: ${TABLE}.entity_id ;;
  }

  dimension: entity_tax_reg_num {
    type: string
    sql: ${TABLE}.entity_tax_reg_num ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.exchange_rate ;;
  }

  dimension_group: expected_close {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.expected_close ;;
  }

  dimension: external_ref_number {
    type: string
    sql: ${TABLE}.external_ref_number ;;
  }

  dimension: failed_inspection {
    type: string
    sql: ${TABLE}.failed_inspection ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension: finance_approved {
    type: string
    sql: ${TABLE}.finance_approved ;;
  }

  dimension_group: finance_approved {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.finance_approved_date ;;
  }

  dimension: finance_declined {
    type: string
    sql: ${TABLE}.finance_declined ;;
  }

  dimension: fob {
    type: string
    sql: ${TABLE}.fob ;;
  }

  dimension: forecast_type {
    type: string
    sql: ${TABLE}.forecast_type ;;
  }

  dimension: include_in_forecast {
    type: string
    sql: ${TABLE}.include_in_forecast ;;
  }

  dimension: incoterm {
    type: string
    sql: ${TABLE}.incoterm ;;
  }

  dimension: inspected_by_id {
    type: string
    sql: ${TABLE}.inspected_by_id ;;
  }

  dimension_group: inspection {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.inspection_date ;;
  }

  dimension: inspection_test_1 {
    type: string
    sql: ${TABLE}.inspection_test_1 ;;
  }

  dimension: inspection_test_2 {
    type: string
    sql: ${TABLE}.inspection_test_2 ;;
  }

  dimension: invoice_on_hold {
    type: string
    sql: ${TABLE}.invoice_on_hold ;;
  }

  dimension: is_advanced_intercompany {
    type: string
    sql: ${TABLE}.is_advanced_intercompany ;;
  }

  dimension: is_autocalculate_lag {
    type: string
    sql: ${TABLE}.is_autocalculate_lag ;;
  }

  dimension: is_compliant {
    type: string
    sql: ${TABLE}.is_compliant ;;
  }

  dimension: is_created_from_merge {
    type: string
    sql: ${TABLE}.is_created_from_merge ;;
  }

  dimension: is_cross_sub_transactions {
    type: string
    sql: ${TABLE}.is_cross_sub_transactions ;;
  }

  dimension: is_finance_charge {
    type: string
    sql: ${TABLE}.is_finance_charge ;;
  }

  dimension: is_firmed {
    type: string
    sql: ${TABLE}.is_firmed ;;
  }

  dimension: is_in_transit_payment {
    type: string
    sql: ${TABLE}.is_in_transit_payment ;;
  }

  dimension: is_intercompany {
    type: string
    sql: ${TABLE}.is_intercompany ;;
  }

  dimension: is_merged_into_arrangements {
    type: string
    sql: ${TABLE}.is_merged_into_arrangements ;;
  }

  dimension: is_non_posting {
    type: string
    sql: ${TABLE}.is_non_posting ;;
  }

  dimension: is_override_installments {
    type: string
    sql: ${TABLE}.is_override_installments ;;
  }

  dimension: is_payment_hold {
    type: string
    sql: ${TABLE}.is_payment_hold ;;
  }

  dimension: is_reversal {
    type: string
    sql: ${TABLE}.is_reversal ;;
  }

  dimension: is_tax_reg_override {
    type: string
    sql: ${TABLE}.is_tax_reg_override ;;
  }

  dimension: is_wip {
    type: string
    sql: ${TABLE}.is_wip ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension: item_revision {
    type: string
    sql: ${TABLE}.item_revision ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.job_id ;;
  }

  dimension: landed_cost_allocation_method {
    type: string
    sql: ${TABLE}.landed_cost_allocation_method ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: lead_source_id {
    type: number
    sql: ${TABLE}.lead_source_id ;;
  }

  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
  }

  dimension: machine_shop {
    type: string
    sql: ${TABLE}.machine_shop ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}.memo ;;
  }

  dimension: memorized {
    type: string
    sql: ${TABLE}.memorized ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: needs_bill {
    type: string
    sql: ${TABLE}.needs_bill ;;
  }

  dimension: needs_revenue_commitment {
    type: string
    sql: ${TABLE}.needs_revenue_commitment ;;
  }

  dimension: number_of_pricing_tiers {
    type: string
    sql: ${TABLE}.number_of_pricing_tiers ;;
  }

  dimension: opening_balance_transaction {
    type: string
    sql: ${TABLE}.opening_balance_transaction ;;
  }

  dimension: packing_list_instructions {
    type: string
    sql: ${TABLE}.packing_list_instructions ;;
  }

  dimension: partner_id {
    type: number
    sql: ${TABLE}.partner_id ;;
  }

  dimension: payment_terms_id {
    type: number
    sql: ${TABLE}.payment_terms_id ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: pn_ref_num {
    type: string
    sql: ${TABLE}.pn_ref_num ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension: probability {
    type: string
    sql: ${TABLE}.probability ;;
  }

  dimension: product_label_instructions {
    type: string
    sql: ${TABLE}.product_label_instructions ;;
  }

  dimension: projected_total {
    type: string
    sql: ${TABLE}.projected_total ;;
  }

  dimension_group: promise {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.promise_date ;;
  }

  dimension_group: promise_date_2 {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.promise_date_2 ;;
  }

  dimension: promotion_code_id {
    type: number
    sql: ${TABLE}.promotion_code_id ;;
  }

  dimension: promotion_code_instance_id {
    type: number
    sql: ${TABLE}.promotion_code_instance_id ;;
  }

  dimension: purchase_order_instructions {
    type: string
    sql: ${TABLE}.purchase_order_instructions ;;
  }

  dimension: reason_for_return_id {
    type: string
    sql: ${TABLE}.reason_for_return_id ;;
  }

  dimension: related_tranid {
    type: string
    sql: ${TABLE}.related_tranid ;;
  }

  dimension_group: renewal {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.renewal ;;
  }

  dimension: requires_finance_approval {
    type: string
    sql: ${TABLE}.requires_finance_approval ;;
  }

  dimension: requires_sales_manager_approv {
    type: string
    sql: ${TABLE}.requires_sales_manager_approv ;;
  }

  dimension: revenue_commitment_status {
    type: string
    sql: ${TABLE}.revenue_commitment_status ;;
  }

  dimension_group: revenue_committed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.revenue_committed ;;
  }

  dimension: revenue_status {
    type: string
    sql: ${TABLE}.revenue_status ;;
  }

  dimension: reversing_transaction_id {
    type: string
    sql: ${TABLE}.reversing_transaction_id ;;
  }

  dimension_group: sales_effective {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.sales_effective_date ;;
  }

  dimension: sales_manager_approved {
    type: string
    sql: ${TABLE}.sales_manager_approved ;;
  }

  dimension_group: sales_manager_approved {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.sales_manager_approved_date ;;
  }

  dimension: sales_manager_declined {
    type: string
    sql: ${TABLE}.sales_manager_declined ;;
  }

  dimension: sales_rep_id {
    type: number
    sql: ${TABLE}.sales_rep_id ;;
  }

  dimension: scheduling_method_id {
    type: string
    sql: ${TABLE}.scheduling_method_id ;;
  }

  dimension: senior_executive_approval {
    type: string
    sql: ${TABLE}.senior_executive_approval ;;
  }

  dimension: senior_executive_approval_dat {
    type: string
    sql: ${TABLE}.senior_executive_approval_dat ;;
  }

  dimension: senior_executive_approved {
    type: string
    sql: ${TABLE}.senior_executive_approved ;;
  }

  dimension: senior_executive_approved_dat {
    type: string
    sql: ${TABLE}.senior_executive_approved_dat ;;
  }

  dimension: senior_executive_declined {
    type: string
    sql: ${TABLE}.senior_executive_declined ;;
  }

  dimension: senior_executive_id {
    type: string
    sql: ${TABLE}.senior_executive_id ;;
  }

  dimension: seriallot_number {
    type: string
    sql: ${TABLE}.seriallot_number ;;
  }

  dimension: shipaddress {
    type: string
    sql: ${TABLE}.shipaddress ;;
  }

  dimension_group: shipment_received {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.shipment_received ;;
  }

  dimension: shipment_status_id {
    type: string
    sql: ${TABLE}.shipment_status_id ;;
  }

  dimension: shipping_dept {
    type: string
    sql: ${TABLE}.shipping_dept ;;
  }

  dimension: shipping_item_id {
    type: number
    sql: ${TABLE}.shipping_item_id ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.start_date ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tax_reg_id {
    type: string
    sql: ${TABLE}.tax_reg_id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension_group: trandate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.trandate ;;
  }

  dimension: tranid {
    type: string
    sql: ${TABLE}.tranid ;;
  }

  dimension: trans_is_vsoe_bundle {
    type: string
    sql: ${TABLE}.trans_is_vsoe_bundle ;;
  }

  dimension: transaction_extid {
    type: string
    sql: ${TABLE}.transaction_extid ;;
  }

  dimension: transaction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: transaction_number {
    type: string
    sql: ${TABLE}.transaction_number ;;
  }

  dimension: transaction_partner {
    type: string
    sql: ${TABLE}.transaction_partner ;;
  }

  dimension: transaction_source {
    type: string
    sql: ${TABLE}.transaction_source ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.transaction_type ;;
  }

  dimension: transaction_website {
    type: string
    sql: ${TABLE}.transaction_website ;;
  }

  dimension: transfer_location {
    type: string
    sql: ${TABLE}.transfer_location ;;
  }

  dimension: use_item_cost_as_transfer_cost {
    type: string
    sql: ${TABLE}.use_item_cost_as_transfer_cost ;;
  }

  dimension: vendor_lead_time_days {
    type: number
    sql: ${TABLE}.vendor_lead_time_days ;;
  }

  dimension: visible_in_customer_center {
    type: string
    sql: ${TABLE}.visible_in_customer_center ;;
  }

  dimension: weighted_total {
    type: string
    sql: ${TABLE}.weighted_total ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      intercompany_transaction_id,
      locations.location_id,
      locations.full_name,
      locations.name,
      transactions.intercompany_transaction_id,
      transactions.count
    ]
  }
}
