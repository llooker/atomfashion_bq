# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: procedure {
  hidden: yes

  join: procedure__note {
    view_label: "Procedure: Note"
    sql: LEFT JOIN UNNEST(${procedure.note}) as procedure__note ;;
    relationship: one_to_many
  }

  join: procedure__meta__profile {
    view_label: "Procedure: Meta Profile"
    sql: LEFT JOIN UNNEST(${procedure.meta__profile}) as procedure__meta__profile ;;
    relationship: one_to_many
  }

  join: procedure__follow_up {
    view_label: "Procedure: Followup"
    sql: LEFT JOIN UNNEST(${procedure.follow_up}) as procedure__follow_up ;;
    relationship: one_to_many
  }

  join: procedure__used_code {
    view_label: "Procedure: Usedcode"
    sql: LEFT JOIN UNNEST(${procedure.used_code}) as procedure__used_code ;;
    relationship: one_to_many
  }

  join: procedure__body_site {
    view_label: "Procedure: Bodysite"
    sql: LEFT JOIN UNNEST(${procedure.body_site}) as procedure__body_site ;;
    relationship: one_to_many
  }

  join: procedure__meta__tag {
    view_label: "Procedure: Meta Tag"
    sql: LEFT JOIN UNNEST(${procedure.meta__tag}) as procedure__meta__tag ;;
    relationship: one_to_many
  }

  join: procedure__part_of {
    view_label: "Procedure: Partof"
    sql: LEFT JOIN UNNEST(${procedure.part_of}) as procedure__part_of ;;
    relationship: one_to_many
  }

  join: procedure__identifier {
    view_label: "Procedure: Identifier"
    sql: LEFT JOIN UNNEST(${procedure.identifier}) as procedure__identifier ;;
    relationship: one_to_many
  }

  join: procedure__report {
    view_label: "Procedure: Report"
    sql: LEFT JOIN UNNEST(${procedure.report}) as procedure__report ;;
    relationship: one_to_many
  }

  join: procedure__reason_code {
    view_label: "Procedure: Reasoncode"
    sql: LEFT JOIN UNNEST(${procedure.reason_code}) as procedure__reason_code ;;
    relationship: one_to_many
  }

  join: procedure__based_on {
    view_label: "Procedure: Basedon"
    sql: LEFT JOIN UNNEST(${procedure.based_on}) as procedure__based_on ;;
    relationship: one_to_many
  }

  join: procedure__code__coding {
    view_label: "Procedure: Code Coding"
    sql: LEFT JOIN UNNEST(${procedure.code__coding}) as procedure__code__coding ;;
    relationship: one_to_many
  }

  join: procedure__complication {
    view_label: "Procedure: Complication"
    sql: LEFT JOIN UNNEST(${procedure.complication}) as procedure__complication ;;
    relationship: one_to_many
  }

  join: procedure__definition {
    view_label: "Procedure: Definition"
    sql: LEFT JOIN UNNEST(${procedure.definition}) as procedure__definition ;;
    relationship: one_to_many
  }

  join: procedure__meta__security {
    view_label: "Procedure: Meta Security"
    sql: LEFT JOIN UNNEST(${procedure.meta__security}) as procedure__meta__security ;;
    relationship: one_to_many
  }

  join: procedure__outcome__coding {
    view_label: "Procedure: Outcome Coding"
    sql: LEFT JOIN UNNEST(${procedure.outcome__coding}) as procedure__outcome__coding ;;
    relationship: one_to_many
  }

  join: procedure__performer {
    view_label: "Procedure: Performer"
    sql: LEFT JOIN UNNEST(${procedure.performer}) as procedure__performer ;;
    relationship: one_to_many
  }

  join: procedure__follow_up__coding {
    view_label: "Procedure: Followup Coding"
    sql: LEFT JOIN UNNEST(${procedure__follow_up.coding}) as procedure__follow_up__coding ;;
    relationship: one_to_many
  }

  join: procedure__used_code__coding {
    view_label: "Procedure: Usedcode Coding"
    sql: LEFT JOIN UNNEST(${procedure__used_code.coding}) as procedure__used_code__coding ;;
    relationship: one_to_many
  }

  join: procedure__body_site__coding {
    view_label: "Procedure: Bodysite Coding"
    sql: LEFT JOIN UNNEST(${procedure__body_site.coding}) as procedure__body_site__coding ;;
    relationship: one_to_many
  }

  join: procedure__category__coding {
    view_label: "Procedure: Category Coding"
    sql: LEFT JOIN UNNEST(${procedure.category__coding}) as procedure__category__coding ;;
    relationship: one_to_many
  }

  join: procedure__used_reference {
    view_label: "Procedure: Usedreference"
    sql: LEFT JOIN UNNEST(${procedure.used_reference}) as procedure__used_reference ;;
    relationship: one_to_many
  }

  join: procedure__reason_code__coding {
    view_label: "Procedure: Reasoncode Coding"
    sql: LEFT JOIN UNNEST(${procedure__reason_code.coding}) as procedure__reason_code__coding ;;
    relationship: one_to_many
  }

  join: procedure__reason_reference {
    view_label: "Procedure: Reasonreference"
    sql: LEFT JOIN UNNEST(${procedure.reason_reference}) as procedure__reason_reference ;;
    relationship: one_to_many
  }

  join: procedure__focal_device {
    view_label: "Procedure: Focaldevice"
    sql: LEFT JOIN UNNEST(${procedure.focal_device}) as procedure__focal_device ;;
    relationship: one_to_many
  }

  join: procedure__complication__coding {
    view_label: "Procedure: Complication Coding"
    sql: LEFT JOIN UNNEST(${procedure__complication.coding}) as procedure__complication__coding ;;
    relationship: one_to_many
  }

  join: procedure__not_done_reason__coding {
    view_label: "Procedure: Notdonereason Coding"
    sql: LEFT JOIN UNNEST(${procedure.not_done_reason__coding}) as procedure__not_done_reason__coding ;;
    relationship: one_to_many
  }

  join: procedure__complication_detail {
    view_label: "Procedure: Complicationdetail"
    sql: LEFT JOIN UNNEST(${procedure.complication_detail}) as procedure__complication_detail ;;
    relationship: one_to_many
  }

  join: procedure__performer__role__coding {
    view_label: "Procedure: Performer Role Coding"
    sql: LEFT JOIN UNNEST(${procedure__performer.role__coding}) as procedure__performer__role__coding ;;
    relationship: one_to_many
  }

  join: procedure__identifier__type__coding {
    view_label: "Procedure: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__identifier.type__coding}) as procedure__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__focal_device__action__coding {
    view_label: "Procedure: Focaldevice Action Coding"
    sql: LEFT JOIN UNNEST(${procedure__focal_device.action__coding}) as procedure__focal_device__action__coding ;;
    relationship: one_to_many
  }

  join: procedure__part_of__identifier__type__coding {
    view_label: "Procedure: Partof Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__part_of.identifier__type__coding}) as procedure__part_of__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__report__identifier__type__coding {
    view_label: "Procedure: Report Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__report.identifier__type__coding}) as procedure__report__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__subject__identifier__type__coding {
    view_label: "Procedure: Subject Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure.subject__identifier__type__coding}) as procedure__subject__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__context__identifier__type__coding {
    view_label: "Procedure: Context Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure.context__identifier__type__coding}) as procedure__context__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__based_on__identifier__type__coding {
    view_label: "Procedure: Basedon Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__based_on.identifier__type__coding}) as procedure__based_on__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__location__identifier__type__coding {
    view_label: "Procedure: Location Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure.location__identifier__type__coding}) as procedure__location__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__definition__identifier__type__coding {
    view_label: "Procedure: Definition Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__definition.identifier__type__coding}) as procedure__definition__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__used_reference__identifier__type__coding {
    view_label: "Procedure: Usedreference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__used_reference.identifier__type__coding}) as procedure__used_reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__reason_reference__identifier__type__coding {
    view_label: "Procedure: Reasonreference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__reason_reference.identifier__type__coding}) as procedure__reason_reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__performer__actor__identifier__type__coding {
    view_label: "Procedure: Performer Actor Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__performer.actor__identifier__type__coding}) as procedure__performer__actor__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__complication_detail__identifier__type__coding {
    view_label: "Procedure: Complicationdetail Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__complication_detail.identifier__type__coding}) as procedure__complication_detail__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__identifier.assigner__identifier__type__coding}) as procedure__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__performer__on_behalf_of__identifier__type__coding {
    view_label: "Procedure: Performer Onbehalfof Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__performer.on_behalf_of__identifier__type__coding}) as procedure__performer__on_behalf_of__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__note__author__reference__identifier__type__coding {
    view_label: "Procedure: Note Author Reference Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__note.author__reference__identifier__type__coding}) as procedure__note__author__reference__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__focal_device__manipulated__identifier__type__coding {
    view_label: "Procedure: Focaldevice Manipulated Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__focal_device.manipulated__identifier__type__coding}) as procedure__focal_device__manipulated__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__part_of__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Partof Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__part_of.identifier__assigner__identifier__type__coding}) as procedure__part_of__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__report__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Report Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__report.identifier__assigner__identifier__type__coding}) as procedure__report__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__subject__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Subject Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure.subject__identifier__assigner__identifier__type__coding}) as procedure__subject__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__context__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Context Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure.context__identifier__assigner__identifier__type__coding}) as procedure__context__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__based_on__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Basedon Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__based_on.identifier__assigner__identifier__type__coding}) as procedure__based_on__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__location__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Location Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure.location__identifier__assigner__identifier__type__coding}) as procedure__location__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__definition__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Definition Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__definition.identifier__assigner__identifier__type__coding}) as procedure__definition__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__used_reference__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Usedreference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__used_reference.identifier__assigner__identifier__type__coding}) as procedure__used_reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__reason_reference__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Reasonreference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__reason_reference.identifier__assigner__identifier__type__coding}) as procedure__reason_reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__performer__actor__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Performer Actor Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__performer.actor__identifier__assigner__identifier__type__coding}) as procedure__performer__actor__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__complication_detail__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Complicationdetail Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__complication_detail.identifier__assigner__identifier__type__coding}) as procedure__complication_detail__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__performer__on_behalf_of__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Performer Onbehalfof Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__performer.on_behalf_of__identifier__assigner__identifier__type__coding}) as procedure__performer__on_behalf_of__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__note__author__reference__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Note Author Reference Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__note.author__reference__identifier__assigner__identifier__type__coding}) as procedure__note__author__reference__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: procedure__focal_device__manipulated__identifier__assigner__identifier__type__coding {
    view_label: "Procedure: Focaldevice Manipulated Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${procedure__focal_device.manipulated__identifier__assigner__identifier__type__coding}) as procedure__focal_device__manipulated__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

# The name of this view in Looker is "Procedure"
view: procedure {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-private-demo.healthcare_demo_live.procedure`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: based_on {
    hidden: yes
    sql: ${TABLE}.basedOn ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Body Site" in Explore.

  dimension: body_site {
    hidden: yes
    sql: ${TABLE}.bodySite ;;
  }

  dimension: category__coding {
    hidden: yes
    sql: ${TABLE}.category.coding ;;
    group_label: "Category"
    group_item_label: "Coding"
  }

  dimension: category__text {
    type: string
    sql: ${TABLE}.category.text ;;
    group_label: "Category"
    group_item_label: "Text"
  }

  dimension: code__coding {
    hidden: yes
    sql: ${TABLE}.code.coding ;;
    group_label: "Code"
    group_item_label: "Coding"
  }

  dimension: code__text {
    type: string
    sql: ${TABLE}.code.text ;;
    group_label: "Code"
    group_item_label: "Text"
  }

  dimension: complication {
    hidden: yes
    sql: ${TABLE}.complication ;;
  }

  dimension: complication_detail {
    hidden: yes
    sql: ${TABLE}.complicationDetail ;;
  }

  dimension: context__display {
    type: string
    sql: ${TABLE}.context.display ;;
    group_label: "Context"
    group_item_label: "Display"
  }

  dimension: context__encounter_id {
    type: string
    sql: ${TABLE}.context.encounterId ;;
    group_label: "Context"
    group_item_label: "Encounter ID"
  }

  dimension: context__episode_of_care_id {
    type: string
    sql: ${TABLE}.context.episodeOfCareId ;;
    group_label: "Context"
    group_item_label: "Episode of Care ID"
  }

  dimension: context__identifier__assigner__display {
    type: string
    sql: ${TABLE}.context.identifier.assigner.display ;;
    group_label: "Context Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: context__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.assigner.display ;;
    group_label: "Context Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: context__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Context Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: context__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Context Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: context__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.period.`end` ;;
    group_label: "Context Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: context__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.period.start ;;
    group_label: "Context Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: context__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.system ;;
    group_label: "Context Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: context__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.context.identifier.assigner.identifier.type.coding ;;
    group_label: "Context Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: context__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.type.text ;;
    group_label: "Context Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: context__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.use ;;
    group_label: "Context Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: context__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.context.identifier.assigner.identifier.value ;;
    group_label: "Context Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: context__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.context.identifier.assigner.organizationId ;;
    group_label: "Context Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: context__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.context.identifier.assigner.reference ;;
    group_label: "Context Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: context__identifier__period__end {
    type: string
    sql: ${TABLE}.context.identifier.period.`end` ;;
    group_label: "Context Identifier Period"
    group_item_label: "End"
  }

  dimension: context__identifier__period__start {
    type: string
    sql: ${TABLE}.context.identifier.period.start ;;
    group_label: "Context Identifier Period"
    group_item_label: "Start"
  }

  dimension: context__identifier__system {
    type: string
    sql: ${TABLE}.context.identifier.system ;;
    group_label: "Context Identifier"
    group_item_label: "System"
  }

  dimension: context__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.context.identifier.type.coding ;;
    group_label: "Context Identifier Type"
    group_item_label: "Coding"
  }

  dimension: context__identifier__type__text {
    type: string
    sql: ${TABLE}.context.identifier.type.text ;;
    group_label: "Context Identifier Type"
    group_item_label: "Text"
  }

  dimension: context__identifier__use {
    type: string
    sql: ${TABLE}.context.identifier.use ;;
    group_label: "Context Identifier"
    group_item_label: "Use"
  }

  dimension: context__identifier__value {
    type: string
    sql: ${TABLE}.context.identifier.value ;;
    group_label: "Context Identifier"
    group_item_label: "Value"
  }

  dimension: context__reference {
    type: string
    sql: ${TABLE}.context.reference ;;
    group_label: "Context"
    group_item_label: "Reference"
  }

  dimension: definition {
    hidden: yes
    sql: ${TABLE}.definition ;;
  }

  dimension: focal_device {
    hidden: yes
    sql: ${TABLE}.focalDevice ;;
  }

  dimension: follow_up {
    hidden: yes
    sql: ${TABLE}.followUp ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: implicit_rules {
    type: string
    sql: ${TABLE}.implicitRules ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: location__display {
    type: string
    sql: ${TABLE}.location.display ;;
    group_label: "Location"
    group_item_label: "Display"
  }

  dimension: location__identifier__assigner__display {
    type: string
    sql: ${TABLE}.location.identifier.assigner.display ;;
    group_label: "Location Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: location__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.assigner.display ;;
    group_label: "Location Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: location__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Location Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: location__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Location Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: location__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.period.`end` ;;
    group_label: "Location Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: location__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.period.start ;;
    group_label: "Location Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: location__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.system ;;
    group_label: "Location Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: location__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.location.identifier.assigner.identifier.type.coding ;;
    group_label: "Location Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: location__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.type.text ;;
    group_label: "Location Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: location__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.use ;;
    group_label: "Location Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: location__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.location.identifier.assigner.identifier.value ;;
    group_label: "Location Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: location__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.location.identifier.assigner.organizationId ;;
    group_label: "Location Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: location__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.location.identifier.assigner.reference ;;
    group_label: "Location Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: location__identifier__period__end {
    type: string
    sql: ${TABLE}.location.identifier.period.`end` ;;
    group_label: "Location Identifier Period"
    group_item_label: "End"
  }

  dimension: location__identifier__period__start {
    type: string
    sql: ${TABLE}.location.identifier.period.start ;;
    group_label: "Location Identifier Period"
    group_item_label: "Start"
  }

  dimension: location__identifier__system {
    type: string
    sql: ${TABLE}.location.identifier.system ;;
    group_label: "Location Identifier"
    group_item_label: "System"
  }

  dimension: location__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.location.identifier.type.coding ;;
    group_label: "Location Identifier Type"
    group_item_label: "Coding"
  }

  dimension: location__identifier__type__text {
    type: string
    sql: ${TABLE}.location.identifier.type.text ;;
    group_label: "Location Identifier Type"
    group_item_label: "Text"
  }

  dimension: location__identifier__use {
    type: string
    sql: ${TABLE}.location.identifier.use ;;
    group_label: "Location Identifier"
    group_item_label: "Use"
  }

  dimension: location__identifier__value {
    type: string
    sql: ${TABLE}.location.identifier.value ;;
    group_label: "Location Identifier"
    group_item_label: "Value"
  }

  dimension: location__location_id {
    type: string
    sql: ${TABLE}.location.locationId ;;
    group_label: "Location"
    group_item_label: "Location ID"
  }

  dimension: location__reference {
    type: string
    sql: ${TABLE}.location.reference ;;
    group_label: "Location"
    group_item_label: "Reference"
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: meta__last_updated {
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
    sql: ${TABLE}.meta.lastUpdated ;;
    group_label: "Meta"
    group_item_label: "Last Updated"
  }

  dimension: meta__profile {
    hidden: yes
    sql: ${TABLE}.meta.profile ;;
    group_label: "Meta"
    group_item_label: "Profile"
  }

  dimension: meta__security {
    hidden: yes
    sql: ${TABLE}.meta.security ;;
    group_label: "Meta"
    group_item_label: "Security"
  }

  dimension: meta__tag {
    hidden: yes
    sql: ${TABLE}.meta.tag ;;
    group_label: "Meta"
    group_item_label: "Tag"
  }

  dimension: meta__version_id {
    type: string
    sql: ${TABLE}.meta.versionId ;;
    group_label: "Meta"
    group_item_label: "Version ID"
  }

  dimension: not_done {
    type: yesno
    sql: ${TABLE}.notDone ;;
  }

  dimension: not_done_reason__coding {
    hidden: yes
    sql: ${TABLE}.notDoneReason.coding ;;
    group_label: "Not Done Reason"
    group_item_label: "Coding"
  }

  dimension: not_done_reason__text {
    type: string
    sql: ${TABLE}.notDoneReason.text ;;
    group_label: "Not Done Reason"
    group_item_label: "Text"
  }

  dimension: note {
    hidden: yes
    sql: ${TABLE}.note ;;
  }

  dimension: outcome__coding {
    hidden: yes
    sql: ${TABLE}.outcome.coding ;;
    group_label: "Outcome"
    group_item_label: "Coding"
  }

  dimension: outcome__text {
    type: string
    sql: ${TABLE}.outcome.text ;;
    group_label: "Outcome"
    group_item_label: "Text"
  }

  dimension: part_of {
    hidden: yes
    sql: ${TABLE}.partOf ;;
  }

  dimension_group: performed__period__end {
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
    sql: ${TABLE}.performed.period.`end` ;;
    group_label: "Performed Period"
    group_item_label: "End"
  }

  dimension_group: performed__period__start {
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
    sql: ${TABLE}.performed.period.start ;;
    group_label: "Performed Period"
    group_item_label: "Start"
  }

  dimension: performer {
    hidden: yes
    sql: ${TABLE}.performer ;;
  }

  dimension: reason_code {
    hidden: yes
    sql: ${TABLE}.reasonCode ;;
  }

  dimension: reason_reference {
    hidden: yes
    sql: ${TABLE}.reasonReference ;;
  }

  dimension: report {
    hidden: yes
    sql: ${TABLE}.report ;;
  }

  dimension: shr_action_performed_context_extension__shr_action_status_extension__value__code {
    type: string
    sql: ${TABLE}.shr_action_PerformedContext_extension.shr_action_Status_extension.value.code ;;
    group_label: "Shr Action Performed Context Extension Shr Action Status Extension Value"
    group_item_label: "Code"
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subject__display {
    type: string
    sql: ${TABLE}.subject.display ;;
    group_label: "Subject"
    group_item_label: "Display"
  }

  dimension: subject__group_id {
    type: string
    sql: ${TABLE}.subject.groupId ;;
    group_label: "Subject"
    group_item_label: "Group ID"
  }

  dimension: subject__identifier__assigner__display {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.display ;;
    group_label: "Subject Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: subject__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.assigner.display ;;
    group_label: "Subject Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: subject__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Subject Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: subject__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Subject Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: subject__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.period.`end` ;;
    group_label: "Subject Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: subject__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.period.start ;;
    group_label: "Subject Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: subject__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.system ;;
    group_label: "Subject Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: subject__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.subject.identifier.assigner.identifier.type.coding ;;
    group_label: "Subject Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: subject__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.type.text ;;
    group_label: "Subject Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: subject__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.use ;;
    group_label: "Subject Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: subject__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.identifier.value ;;
    group_label: "Subject Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: subject__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.organizationId ;;
    group_label: "Subject Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: subject__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.subject.identifier.assigner.reference ;;
    group_label: "Subject Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: subject__identifier__period__end {
    type: string
    sql: ${TABLE}.subject.identifier.period.`end` ;;
    group_label: "Subject Identifier Period"
    group_item_label: "End"
  }

  dimension: subject__identifier__period__start {
    type: string
    sql: ${TABLE}.subject.identifier.period.start ;;
    group_label: "Subject Identifier Period"
    group_item_label: "Start"
  }

  dimension: subject__identifier__system {
    type: string
    sql: ${TABLE}.subject.identifier.system ;;
    group_label: "Subject Identifier"
    group_item_label: "System"
  }

  dimension: subject__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.subject.identifier.type.coding ;;
    group_label: "Subject Identifier Type"
    group_item_label: "Coding"
  }

  dimension: subject__identifier__type__text {
    type: string
    sql: ${TABLE}.subject.identifier.type.text ;;
    group_label: "Subject Identifier Type"
    group_item_label: "Text"
  }

  dimension: subject__identifier__use {
    type: string
    sql: ${TABLE}.subject.identifier.use ;;
    group_label: "Subject Identifier"
    group_item_label: "Use"
  }

  dimension: subject__identifier__value {
    type: string
    sql: ${TABLE}.subject.identifier.value ;;
    group_label: "Subject Identifier"
    group_item_label: "Value"
  }

  dimension: subject__patient_id {
    type: string
    sql: ${TABLE}.subject.patientId ;;
    group_label: "Subject"
    group_item_label: "Patient ID"
  }

  dimension: subject__reference {
    type: string
    sql: ${TABLE}.subject.reference ;;
    group_label: "Subject"
    group_item_label: "Reference"
  }

  dimension: text__div {
    type: string
    sql: ${TABLE}.text.div ;;
    group_label: "Text"
    group_item_label: "Div"
  }

  dimension: text__status {
    type: string
    sql: ${TABLE}.text.status ;;
    group_label: "Text"
    group_item_label: "Status"
  }

  dimension: used_code {
    hidden: yes
    sql: ${TABLE}.usedCode ;;
  }

  dimension: used_reference {
    hidden: yes
    sql: ${TABLE}.usedReference ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [id]
  }
}

# These sum and average measures are hidden by default.
# If you want them to show up in your explore, remove hidden: yes.


# The name of this view in Looker is "Procedure Note"
view: procedure__note {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Author Reference Display" in Explore.

  dimension: author__reference__display {
    type: string
    sql: ${TABLE}.author.reference.display ;;
    group_label: "Author Reference"
    group_item_label: "Display"
  }

  dimension: author__reference__identifier__assigner__display {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.display ;;
    group_label: "Author Reference Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: author__reference__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.assigner.display ;;
    group_label: "Author Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: author__reference__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Author Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: author__reference__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Author Reference Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: author__reference__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.period.`end` ;;
    group_label: "Author Reference Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: author__reference__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.period.start ;;
    group_label: "Author Reference Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: author__reference__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.system ;;
    group_label: "Author Reference Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: author__reference__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.type.coding ;;
    group_label: "Author Reference Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: author__reference__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.type.text ;;
    group_label: "Author Reference Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: author__reference__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.use ;;
    group_label: "Author Reference Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: author__reference__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.identifier.value ;;
    group_label: "Author Reference Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: author__reference__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.organizationId ;;
    group_label: "Author Reference Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: author__reference__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.author.reference.identifier.assigner.reference ;;
    group_label: "Author Reference Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: author__reference__identifier__period__end {
    type: string
    sql: ${TABLE}.author.reference.identifier.period.`end` ;;
    group_label: "Author Reference Identifier Period"
    group_item_label: "End"
  }

  dimension: author__reference__identifier__period__start {
    type: string
    sql: ${TABLE}.author.reference.identifier.period.start ;;
    group_label: "Author Reference Identifier Period"
    group_item_label: "Start"
  }

  dimension: author__reference__identifier__system {
    type: string
    sql: ${TABLE}.author.reference.identifier.system ;;
    group_label: "Author Reference Identifier"
    group_item_label: "System"
  }

  dimension: author__reference__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.author.reference.identifier.type.coding ;;
    group_label: "Author Reference Identifier Type"
    group_item_label: "Coding"
  }

  dimension: author__reference__identifier__type__text {
    type: string
    sql: ${TABLE}.author.reference.identifier.type.text ;;
    group_label: "Author Reference Identifier Type"
    group_item_label: "Text"
  }

  dimension: author__reference__identifier__use {
    type: string
    sql: ${TABLE}.author.reference.identifier.use ;;
    group_label: "Author Reference Identifier"
    group_item_label: "Use"
  }

  dimension: author__reference__identifier__value {
    type: string
    sql: ${TABLE}.author.reference.identifier.value ;;
    group_label: "Author Reference Identifier"
    group_item_label: "Value"
  }

  dimension: author__reference__patient_id {
    type: string
    sql: ${TABLE}.author.reference.patientId ;;
    group_label: "Author Reference"
    group_item_label: "Patient ID"
  }

  dimension: author__reference__practitioner_id {
    type: string
    sql: ${TABLE}.author.reference.practitionerId ;;
    group_label: "Author Reference"
    group_item_label: "Practitioner ID"
  }

  dimension: author__reference__reference {
    type: string
    sql: ${TABLE}.author.reference.reference ;;
    group_label: "Author Reference"
    group_item_label: "Reference"
  }

  dimension: author__reference__related_person_id {
    type: string
    sql: ${TABLE}.author.reference.relatedPersonId ;;
    group_label: "Author Reference"
    group_item_label: "Related Person ID"
  }

  dimension: author__string {
    type: string
    sql: ${TABLE}.author.string ;;
    group_label: "Author"
    group_item_label: "String"
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }
}

# The name of this view in Looker is "Procedure Meta Profile"
view: procedure__meta__profile {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Procedure Meta Profile" in Explore.

  dimension: procedure__meta__profile {
    type: string
    sql: procedure__meta__profile ;;
  }
}

# The name of this view in Looker is "Procedure Follow Up"
view: procedure__follow_up {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Text" in Explore.

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

# The name of this view in Looker is "Procedure Used Code"
view: procedure__used_code {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Text" in Explore.

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

# The name of this view in Looker is "Procedure Body Site"
view: procedure__body_site {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Text" in Explore.

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

# The name of this view in Looker is "Procedure Meta Tag"
view: procedure__meta__tag {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Part Of"
view: procedure__part_of {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Display" in Explore.

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.display ;;
    group_label: "Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.display ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.`end` ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.start ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.system ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.assigner.identifier.type.coding ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.type.text ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.use ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.value ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.reference ;;
    group_label: "Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.period.`end` ;;
    group_label: "Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.period.start ;;
    group_label: "Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__system {
    type: string
    sql: ${TABLE}.identifier.system ;;
    group_label: "Identifier"
    group_item_label: "System"
  }

  dimension: identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.type.coding ;;
    group_label: "Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.type.text ;;
    group_label: "Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__use {
    type: string
    sql: ${TABLE}.identifier.use ;;
    group_label: "Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__value {
    type: string
    sql: ${TABLE}.identifier.value ;;
    group_label: "Identifier"
    group_item_label: "Value"
  }

  dimension: medication_administration_id {
    type: string
    sql: ${TABLE}.medicationAdministrationId ;;
  }

  dimension: observation_id {
    type: string
    sql: ${TABLE}.observationId ;;
  }

  dimension: procedure_id {
    type: string
    sql: ${TABLE}.procedureId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

# The name of this view in Looker is "Procedure Identifier"
view: procedure__identifier {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Assigner Display" in Explore.

  dimension: assigner__display {
    type: string
    sql: ${TABLE}.assigner.display ;;
    group_label: "Assigner"
    group_item_label: "Display"
  }

  dimension: assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.assigner.identifier.assigner.display ;;
    group_label: "Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.assigner.identifier.assigner.organizationId ;;
    group_label: "Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.assigner.identifier.assigner.reference ;;
    group_label: "Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.assigner.identifier.period.`end` ;;
    group_label: "Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.assigner.identifier.period.start ;;
    group_label: "Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: assigner__identifier__system {
    type: string
    sql: ${TABLE}.assigner.identifier.system ;;
    group_label: "Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.assigner.identifier.type.coding ;;
    group_label: "Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.assigner.identifier.type.text ;;
    group_label: "Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: assigner__identifier__use {
    type: string
    sql: ${TABLE}.assigner.identifier.use ;;
    group_label: "Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: assigner__identifier__value {
    type: string
    sql: ${TABLE}.assigner.identifier.value ;;
    group_label: "Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: assigner__organization_id {
    type: string
    sql: ${TABLE}.assigner.organizationId ;;
    group_label: "Assigner"
    group_item_label: "Organization ID"
  }

  dimension: assigner__reference {
    type: string
    sql: ${TABLE}.assigner.reference ;;
    group_label: "Assigner"
    group_item_label: "Reference"
  }

  dimension: period__end {
    type: string
    sql: ${TABLE}.period.`end` ;;
    group_label: "Period"
    group_item_label: "End"
  }

  dimension: period__start {
    type: string
    sql: ${TABLE}.period.start ;;
    group_label: "Period"
    group_item_label: "Start"
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: type__coding {
    hidden: yes
    sql: ${TABLE}.type.coding ;;
    group_label: "Type"
    group_item_label: "Coding"
  }

  dimension: type__text {
    type: string
    sql: ${TABLE}.type.text ;;
    group_label: "Type"
    group_item_label: "Text"
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

# The name of this view in Looker is "Procedure Report"
view: procedure__report {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Diagnostic Report ID" in Explore.

  dimension: diagnostic_report_id {
    type: string
    sql: ${TABLE}.diagnosticReportId ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.display ;;
    group_label: "Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.display ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.`end` ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.start ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.system ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.assigner.identifier.type.coding ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.type.text ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.use ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.value ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.reference ;;
    group_label: "Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.period.`end` ;;
    group_label: "Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.period.start ;;
    group_label: "Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__system {
    type: string
    sql: ${TABLE}.identifier.system ;;
    group_label: "Identifier"
    group_item_label: "System"
  }

  dimension: identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.type.coding ;;
    group_label: "Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.type.text ;;
    group_label: "Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__use {
    type: string
    sql: ${TABLE}.identifier.use ;;
    group_label: "Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__value {
    type: string
    sql: ${TABLE}.identifier.value ;;
    group_label: "Identifier"
    group_item_label: "Value"
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

# The name of this view in Looker is "Procedure Reason Code"
view: procedure__reason_code {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Text" in Explore.

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

# The name of this view in Looker is "Procedure Based On"
view: procedure__based_on {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Care Plan ID" in Explore.

  dimension: care_plan_id {
    type: string
    sql: ${TABLE}.carePlanId ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.display ;;
    group_label: "Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.display ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.`end` ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.start ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.system ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.assigner.identifier.type.coding ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.type.text ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.use ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.value ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.reference ;;
    group_label: "Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.period.`end` ;;
    group_label: "Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.period.start ;;
    group_label: "Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__system {
    type: string
    sql: ${TABLE}.identifier.system ;;
    group_label: "Identifier"
    group_item_label: "System"
  }

  dimension: identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.type.coding ;;
    group_label: "Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.type.text ;;
    group_label: "Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__use {
    type: string
    sql: ${TABLE}.identifier.use ;;
    group_label: "Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__value {
    type: string
    sql: ${TABLE}.identifier.value ;;
    group_label: "Identifier"
    group_item_label: "Value"
  }

  dimension: procedure_request_id {
    type: string
    sql: ${TABLE}.procedureRequestId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }

  dimension: referral_request_id {
    type: string
    sql: ${TABLE}.referralRequestId ;;
  }
}

# The name of this view in Looker is "Procedure Code Coding"
view: procedure__code__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Complication"
view: procedure__complication {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Text" in Explore.

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

# The name of this view in Looker is "Procedure Definition"
view: procedure__definition {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Activity Definition ID" in Explore.

  dimension: activity_definition_id {
    type: string
    sql: ${TABLE}.activityDefinitionId ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: healthcare_service_id {
    type: string
    sql: ${TABLE}.healthcareServiceId ;;
  }

  dimension: identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.display ;;
    group_label: "Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.display ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.`end` ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.start ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.system ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.assigner.identifier.type.coding ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.type.text ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.use ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.value ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.reference ;;
    group_label: "Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.period.`end` ;;
    group_label: "Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.period.start ;;
    group_label: "Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__system {
    type: string
    sql: ${TABLE}.identifier.system ;;
    group_label: "Identifier"
    group_item_label: "System"
  }

  dimension: identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.type.coding ;;
    group_label: "Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.type.text ;;
    group_label: "Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__use {
    type: string
    sql: ${TABLE}.identifier.use ;;
    group_label: "Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__value {
    type: string
    sql: ${TABLE}.identifier.value ;;
    group_label: "Identifier"
    group_item_label: "Value"
  }

  dimension: plan_definition_id {
    type: string
    sql: ${TABLE}.planDefinitionId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

# The name of this view in Looker is "Procedure Meta Security"
view: procedure__meta__security {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Outcome Coding"
view: procedure__outcome__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Performer"
view: procedure__performer {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Actor Device ID" in Explore.

  dimension: actor__device_id {
    type: string
    sql: ${TABLE}.actor.deviceId ;;
    group_label: "Actor"
    group_item_label: "Device ID"
  }

  dimension: actor__display {
    type: string
    sql: ${TABLE}.actor.display ;;
    group_label: "Actor"
    group_item_label: "Display"
  }

  dimension: actor__identifier__assigner__display {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.display ;;
    group_label: "Actor Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: actor__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.assigner.display ;;
    group_label: "Actor Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: actor__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Actor Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: actor__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Actor Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: actor__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.period.`end` ;;
    group_label: "Actor Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: actor__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.period.start ;;
    group_label: "Actor Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: actor__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.system ;;
    group_label: "Actor Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: actor__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.actor.identifier.assigner.identifier.type.coding ;;
    group_label: "Actor Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: actor__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.type.text ;;
    group_label: "Actor Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: actor__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.use ;;
    group_label: "Actor Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: actor__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.identifier.value ;;
    group_label: "Actor Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: actor__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.organizationId ;;
    group_label: "Actor Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: actor__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.actor.identifier.assigner.reference ;;
    group_label: "Actor Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: actor__identifier__period__end {
    type: string
    sql: ${TABLE}.actor.identifier.period.`end` ;;
    group_label: "Actor Identifier Period"
    group_item_label: "End"
  }

  dimension: actor__identifier__period__start {
    type: string
    sql: ${TABLE}.actor.identifier.period.start ;;
    group_label: "Actor Identifier Period"
    group_item_label: "Start"
  }

  dimension: actor__identifier__system {
    type: string
    sql: ${TABLE}.actor.identifier.system ;;
    group_label: "Actor Identifier"
    group_item_label: "System"
  }

  dimension: actor__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.actor.identifier.type.coding ;;
    group_label: "Actor Identifier Type"
    group_item_label: "Coding"
  }

  dimension: actor__identifier__type__text {
    type: string
    sql: ${TABLE}.actor.identifier.type.text ;;
    group_label: "Actor Identifier Type"
    group_item_label: "Text"
  }

  dimension: actor__identifier__use {
    type: string
    sql: ${TABLE}.actor.identifier.use ;;
    group_label: "Actor Identifier"
    group_item_label: "Use"
  }

  dimension: actor__identifier__value {
    type: string
    sql: ${TABLE}.actor.identifier.value ;;
    group_label: "Actor Identifier"
    group_item_label: "Value"
  }

  dimension: actor__organization_id {
    type: string
    sql: ${TABLE}.actor.organizationId ;;
    group_label: "Actor"
    group_item_label: "Organization ID"
  }

  dimension: actor__patient_id {
    type: string
    sql: ${TABLE}.actor.patientId ;;
    group_label: "Actor"
    group_item_label: "Patient ID"
  }

  dimension: actor__practitioner_id {
    type: string
    sql: ${TABLE}.actor.practitionerId ;;
    group_label: "Actor"
    group_item_label: "Practitioner ID"
  }

  dimension: actor__reference {
    type: string
    sql: ${TABLE}.actor.reference ;;
    group_label: "Actor"
    group_item_label: "Reference"
  }

  dimension: actor__related_person_id {
    type: string
    sql: ${TABLE}.actor.relatedPersonId ;;
    group_label: "Actor"
    group_item_label: "Related Person ID"
  }

  dimension: on_behalf_of__display {
    type: string
    sql: ${TABLE}.onBehalfOf.display ;;
    group_label: "On Behalf Of"
    group_item_label: "Display"
  }

  dimension: on_behalf_of__identifier__assigner__display {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.display ;;
    group_label: "On Behalf of Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.assigner.display ;;
    group_label: "On Behalf of Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "On Behalf of Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.assigner.reference ;;
    group_label: "On Behalf of Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.period.`end` ;;
    group_label: "On Behalf of Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.period.start ;;
    group_label: "On Behalf of Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.system ;;
    group_label: "On Behalf of Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.type.coding ;;
    group_label: "On Behalf of Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.type.text ;;
    group_label: "On Behalf of Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.use ;;
    group_label: "On Behalf of Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: on_behalf_of__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.identifier.value ;;
    group_label: "On Behalf of Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: on_behalf_of__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.organizationId ;;
    group_label: "On Behalf of Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: on_behalf_of__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.assigner.reference ;;
    group_label: "On Behalf of Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: on_behalf_of__identifier__period__end {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.period.`end` ;;
    group_label: "On Behalf of Identifier Period"
    group_item_label: "End"
  }

  dimension: on_behalf_of__identifier__period__start {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.period.start ;;
    group_label: "On Behalf of Identifier Period"
    group_item_label: "Start"
  }

  dimension: on_behalf_of__identifier__system {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.system ;;
    group_label: "On Behalf of Identifier"
    group_item_label: "System"
  }

  dimension: on_behalf_of__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.onBehalfOf.identifier.type.coding ;;
    group_label: "On Behalf of Identifier Type"
    group_item_label: "Coding"
  }

  dimension: on_behalf_of__identifier__type__text {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.type.text ;;
    group_label: "On Behalf of Identifier Type"
    group_item_label: "Text"
  }

  dimension: on_behalf_of__identifier__use {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.use ;;
    group_label: "On Behalf of Identifier"
    group_item_label: "Use"
  }

  dimension: on_behalf_of__identifier__value {
    type: string
    sql: ${TABLE}.onBehalfOf.identifier.value ;;
    group_label: "On Behalf of Identifier"
    group_item_label: "Value"
  }

  dimension: on_behalf_of__organization_id {
    type: string
    sql: ${TABLE}.onBehalfOf.organizationId ;;
    group_label: "On Behalf Of"
    group_item_label: "Organization ID"
  }

  dimension: on_behalf_of__reference {
    type: string
    sql: ${TABLE}.onBehalfOf.reference ;;
    group_label: "On Behalf Of"
    group_item_label: "Reference"
  }

  dimension: role__coding {
    hidden: yes
    sql: ${TABLE}.role.coding ;;
    group_label: "Role"
    group_item_label: "Coding"
  }

  dimension: role__text {
    type: string
    sql: ${TABLE}.role.text ;;
    group_label: "Role"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "Procedure Follow Up Coding"
view: procedure__follow_up__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Used Code Coding"
view: procedure__used_code__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Body Site Coding"
view: procedure__body_site__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Category Coding"
view: procedure__category__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Used Reference"
view: procedure__used_reference {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Device ID" in Explore.

  dimension: device_id {
    type: string
    sql: ${TABLE}.deviceId ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.display ;;
    group_label: "Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.display ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.`end` ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.start ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.system ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.assigner.identifier.type.coding ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.type.text ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.use ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.value ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.reference ;;
    group_label: "Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.period.`end` ;;
    group_label: "Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.period.start ;;
    group_label: "Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__system {
    type: string
    sql: ${TABLE}.identifier.system ;;
    group_label: "Identifier"
    group_item_label: "System"
  }

  dimension: identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.type.coding ;;
    group_label: "Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.type.text ;;
    group_label: "Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__use {
    type: string
    sql: ${TABLE}.identifier.use ;;
    group_label: "Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__value {
    type: string
    sql: ${TABLE}.identifier.value ;;
    group_label: "Identifier"
    group_item_label: "Value"
  }

  dimension: medication_id {
    type: string
    sql: ${TABLE}.medicationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }

  dimension: substance_id {
    type: string
    sql: ${TABLE}.substanceId ;;
  }
}

# The name of this view in Looker is "Procedure Reason Code Coding"
view: procedure__reason_code__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Reason Reference"
view: procedure__reason_reference {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Condition ID" in Explore.

  dimension: condition_id {
    type: string
    sql: ${TABLE}.conditionId ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.display ;;
    group_label: "Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.display ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.`end` ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.start ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.system ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.assigner.identifier.type.coding ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.type.text ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.use ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.value ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.reference ;;
    group_label: "Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.period.`end` ;;
    group_label: "Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.period.start ;;
    group_label: "Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__system {
    type: string
    sql: ${TABLE}.identifier.system ;;
    group_label: "Identifier"
    group_item_label: "System"
  }

  dimension: identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.type.coding ;;
    group_label: "Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.type.text ;;
    group_label: "Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__use {
    type: string
    sql: ${TABLE}.identifier.use ;;
    group_label: "Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__value {
    type: string
    sql: ${TABLE}.identifier.value ;;
    group_label: "Identifier"
    group_item_label: "Value"
  }

  dimension: observation_id {
    type: string
    sql: ${TABLE}.observationId ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

# The name of this view in Looker is "Procedure Focal Device"
view: procedure__focal_device {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: action__coding {
    hidden: yes
    sql: ${TABLE}.action.coding ;;
    group_label: "Action"
    group_item_label: "Coding"
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Action Text" in Explore.

  dimension: action__text {
    type: string
    sql: ${TABLE}.action.text ;;
    group_label: "Action"
    group_item_label: "Text"
  }

  dimension: manipulated__device_id {
    type: string
    sql: ${TABLE}.manipulated.deviceId ;;
    group_label: "Manipulated"
    group_item_label: "Device ID"
  }

  dimension: manipulated__display {
    type: string
    sql: ${TABLE}.manipulated.display ;;
    group_label: "Manipulated"
    group_item_label: "Display"
  }

  dimension: manipulated__identifier__assigner__display {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.display ;;
    group_label: "Manipulated Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: manipulated__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.assigner.display ;;
    group_label: "Manipulated Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: manipulated__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Manipulated Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: manipulated__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Manipulated Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: manipulated__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.period.`end` ;;
    group_label: "Manipulated Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: manipulated__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.period.start ;;
    group_label: "Manipulated Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: manipulated__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.system ;;
    group_label: "Manipulated Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: manipulated__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.type.coding ;;
    group_label: "Manipulated Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: manipulated__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.type.text ;;
    group_label: "Manipulated Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: manipulated__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.use ;;
    group_label: "Manipulated Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: manipulated__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.identifier.value ;;
    group_label: "Manipulated Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: manipulated__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.organizationId ;;
    group_label: "Manipulated Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: manipulated__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.manipulated.identifier.assigner.reference ;;
    group_label: "Manipulated Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: manipulated__identifier__period__end {
    type: string
    sql: ${TABLE}.manipulated.identifier.period.`end` ;;
    group_label: "Manipulated Identifier Period"
    group_item_label: "End"
  }

  dimension: manipulated__identifier__period__start {
    type: string
    sql: ${TABLE}.manipulated.identifier.period.start ;;
    group_label: "Manipulated Identifier Period"
    group_item_label: "Start"
  }

  dimension: manipulated__identifier__system {
    type: string
    sql: ${TABLE}.manipulated.identifier.system ;;
    group_label: "Manipulated Identifier"
    group_item_label: "System"
  }

  dimension: manipulated__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.manipulated.identifier.type.coding ;;
    group_label: "Manipulated Identifier Type"
    group_item_label: "Coding"
  }

  dimension: manipulated__identifier__type__text {
    type: string
    sql: ${TABLE}.manipulated.identifier.type.text ;;
    group_label: "Manipulated Identifier Type"
    group_item_label: "Text"
  }

  dimension: manipulated__identifier__use {
    type: string
    sql: ${TABLE}.manipulated.identifier.use ;;
    group_label: "Manipulated Identifier"
    group_item_label: "Use"
  }

  dimension: manipulated__identifier__value {
    type: string
    sql: ${TABLE}.manipulated.identifier.value ;;
    group_label: "Manipulated Identifier"
    group_item_label: "Value"
  }

  dimension: manipulated__reference {
    type: string
    sql: ${TABLE}.manipulated.reference ;;
    group_label: "Manipulated"
    group_item_label: "Reference"
  }
}

# The name of this view in Looker is "Procedure Complication Coding"
view: procedure__complication__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Not Done Reason Coding"
view: procedure__not_done_reason__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Complication Detail"
view: procedure__complication_detail {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Condition ID" in Explore.

  dimension: condition_id {
    type: string
    sql: ${TABLE}.conditionId ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.display ;;
    group_label: "Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.display ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.`end` ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.start ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.system ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "System"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.assigner.identifier.type.coding ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.type.text ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.use ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.value ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.reference ;;
    group_label: "Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.period.`end` ;;
    group_label: "Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.period.start ;;
    group_label: "Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__system {
    type: string
    sql: ${TABLE}.identifier.system ;;
    group_label: "Identifier"
    group_item_label: "System"
  }

  dimension: identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.type.coding ;;
    group_label: "Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.type.text ;;
    group_label: "Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__use {
    type: string
    sql: ${TABLE}.identifier.use ;;
    group_label: "Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__value {
    type: string
    sql: ${TABLE}.identifier.value ;;
    group_label: "Identifier"
    group_item_label: "Value"
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }
}

# The name of this view in Looker is "Procedure Performer Role Coding"
view: procedure__performer__role__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Identifier Type Coding"
view: procedure__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Focal Device Action Coding"
view: procedure__focal_device__action__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Part of Identifier Type Coding"
view: procedure__part_of__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Report Identifier Type Coding"
view: procedure__report__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Subject Identifier Type Coding"
view: procedure__subject__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Context Identifier Type Coding"
view: procedure__context__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Based on Identifier Type Coding"
view: procedure__based_on__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Location Identifier Type Coding"
view: procedure__location__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Definition Identifier Type Coding"
view: procedure__definition__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Used Reference Identifier Type Coding"
view: procedure__used_reference__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Reason Reference Identifier Type Coding"
view: procedure__reason_reference__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Performer Actor Identifier Type Coding"
view: procedure__performer__actor__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Complication Detail Identifier Type Coding"
view: procedure__complication_detail__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Identifier Assigner Identifier Type Coding"
view: procedure__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Performer on Behalf of Identifier Type Coding"
view: procedure__performer__on_behalf_of__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Note Author Reference Identifier Type Coding"
view: procedure__note__author__reference__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Focal Device Manipulated Identifier Type Coding"
view: procedure__focal_device__manipulated__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Part of Identifier Assigner Identifier Type Coding"
view: procedure__part_of__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Report Identifier Assigner Identifier Type Coding"
view: procedure__report__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Subject Identifier Assigner Identifier Type Coding"
view: procedure__subject__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Context Identifier Assigner Identifier Type Coding"
view: procedure__context__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Based on Identifier Assigner Identifier Type Coding"
view: procedure__based_on__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Location Identifier Assigner Identifier Type Coding"
view: procedure__location__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Definition Identifier Assigner Identifier Type Coding"
view: procedure__definition__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Used Reference Identifier Assigner Identifier Type Coding"
view: procedure__used_reference__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Reason Reference Identifier Assigner Identifier Type Coding"
view: procedure__reason_reference__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Performer Actor Identifier Assigner Identifier Type Coding"
view: procedure__performer__actor__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Complication Detail Identifier Assigner Identifier Type Coding"
view: procedure__complication_detail__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Performer on Behalf of Identifier Assigner Identifier Type Coding"
view: procedure__performer__on_behalf_of__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Note Author Reference Identifier Assigner Identifier Type Coding"
view: procedure__note__author__reference__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Procedure Focal Device Manipulated Identifier Assigner Identifier Type Coding"
view: procedure__focal_device__manipulated__identifier__assigner__identifier__type__coding {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}
