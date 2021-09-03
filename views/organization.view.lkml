# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: organization {
  hidden: yes

  join: organization__alias {
    view_label: "Organization: Alias"
    sql: LEFT JOIN UNNEST(${organization.alias}) as organization__alias ;;
    relationship: one_to_many
  }

  join: organization__type {
    view_label: "Organization: Type"
    sql: LEFT JOIN UNNEST(${organization.type}) as organization__type ;;
    relationship: one_to_many
  }

  join: organization__address {
    view_label: "Organization: Address"
    sql: LEFT JOIN UNNEST(${organization.address}) as organization__address ;;
    relationship: one_to_many
  }

  join: organization__telecom {
    view_label: "Organization: Telecom"
    sql: LEFT JOIN UNNEST(${organization.telecom}) as organization__telecom ;;
    relationship: one_to_many
  }

  join: organization__address__line {
    view_label: "Organization: Address Line"
    sql: LEFT JOIN UNNEST(${organization__address.line}) as organization__address__line ;;
    relationship: one_to_many
  }

  join: organization__meta__profile {
    view_label: "Organization: Meta Profile"
    sql: LEFT JOIN UNNEST(${organization.meta__profile}) as organization__meta__profile ;;
    relationship: one_to_many
  }

  join: organization__meta__tag {
    view_label: "Organization: Meta Tag"
    sql: LEFT JOIN UNNEST(${organization.meta__tag}) as organization__meta__tag ;;
    relationship: one_to_many
  }

  join: organization__identifier {
    view_label: "Organization: Identifier"
    sql: LEFT JOIN UNNEST(${organization.identifier}) as organization__identifier ;;
    relationship: one_to_many
  }

  join: organization__type__coding {
    view_label: "Organization: Type Coding"
    sql: LEFT JOIN UNNEST(${organization__type.coding}) as organization__type__coding ;;
    relationship: one_to_many
  }

  join: organization__endpoint {
    view_label: "Organization: Endpoint"
    sql: LEFT JOIN UNNEST(${organization.endpoint}) as organization__endpoint ;;
    relationship: one_to_many
  }

  join: organization__contact {
    view_label: "Organization: Contact"
    sql: LEFT JOIN UNNEST(${organization.contact}) as organization__contact ;;
    relationship: one_to_many
  }

  join: organization__meta__security {
    view_label: "Organization: Meta Security"
    sql: LEFT JOIN UNNEST(${organization.meta__security}) as organization__meta__security ;;
    relationship: one_to_many
  }

  join: organization__contact__name__given {
    view_label: "Organization: Contact Name Given"
    sql: LEFT JOIN UNNEST(${organization__contact.name__given}) as organization__contact__name__given ;;
    relationship: one_to_many
  }

  join: organization__contact__name__prefix {
    view_label: "Organization: Contact Name Prefix"
    sql: LEFT JOIN UNNEST(${organization__contact.name__prefix}) as organization__contact__name__prefix ;;
    relationship: one_to_many
  }

  join: organization__contact__name__suffix {
    view_label: "Organization: Contact Name Suffix"
    sql: LEFT JOIN UNNEST(${organization__contact.name__suffix}) as organization__contact__name__suffix ;;
    relationship: one_to_many
  }

  join: organization__contact__telecom {
    view_label: "Organization: Contact Telecom"
    sql: LEFT JOIN UNNEST(${organization__contact.telecom}) as organization__contact__telecom ;;
    relationship: one_to_many
  }

  join: organization__contact__address__line {
    view_label: "Organization: Contact Address Line"
    sql: LEFT JOIN UNNEST(${organization__contact.address__line}) as organization__contact__address__line ;;
    relationship: one_to_many
  }

  join: organization__identifier__type__coding {
    view_label: "Organization: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${organization__identifier.type__coding}) as organization__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: organization__contact__purpose__coding {
    view_label: "Organization: Contact Purpose Coding"
    sql: LEFT JOIN UNNEST(${organization__contact.purpose__coding}) as organization__contact__purpose__coding ;;
    relationship: one_to_many
  }

  join: organization__part_of__identifier__type__coding {
    view_label: "Organization: Partof Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${organization.part_of__identifier__type__coding}) as organization__part_of__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: organization__endpoint__identifier__type__coding {
    view_label: "Organization: Endpoint Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${organization__endpoint.identifier__type__coding}) as organization__endpoint__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: organization__identifier__assigner__identifier__type__coding {
    view_label: "Organization: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${organization__identifier.assigner__identifier__type__coding}) as organization__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: organization__part_of__identifier__assigner__identifier__type__coding {
    view_label: "Organization: Partof Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${organization.part_of__identifier__assigner__identifier__type__coding}) as organization__part_of__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: organization__endpoint__identifier__assigner__identifier__type__coding {
    view_label: "Organization: Endpoint Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${organization__endpoint.identifier__assigner__identifier__type__coding}) as organization__endpoint__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

# The name of this view in Looker is "Organization"
view: organization {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-private-demo.healthcare_demo_live.organization`
    ;;
  drill_fields: [part_of__identifier__assigner__identifier__assigner__organization_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: part_of__identifier__assigner__identifier__assigner__organization_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.partOf.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Part of Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Active" in Explore.

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: address {
    hidden: yes
    sql: ${TABLE}.address ;;
  }

  dimension: alias {
    hidden: yes
    sql: ${TABLE}.alias ;;
  }

  dimension: contact {
    hidden: yes
    sql: ${TABLE}.contact ;;
  }

  dimension: endpoint {
    hidden: yes
    sql: ${TABLE}.endpoint ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: part_of__display {
    type: string
    sql: ${TABLE}.partOf.display ;;
    group_label: "Part Of"
    group_item_label: "Display"
  }

  dimension: part_of__identifier__assigner__display {
    type: string
    sql: ${TABLE}.partOf.identifier.assigner.display ;;
    group_label: "Part of Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: part_of__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.partOf.identifier.assigner.identifier.assigner.display ;;
    group_label: "Part of Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: part_of__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.partOf.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Part of Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: part_of__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.partOf.identifier.assigner.identifier.period.`end` ;;
    group_label: "Part of Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: part_of__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.partOf.identifier.assigner.identifier.period.start ;;
    group_label: "Part of Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: part_of__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.partOf.identifier.assigner.identifier.system ;;
    group_label: "Part of Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: part_of__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.partOf.identifier.assigner.identifier.type.coding ;;
    group_label: "Part of Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: part_of__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.partOf.identifier.assigner.identifier.type.text ;;
    group_label: "Part of Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: part_of__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.partOf.identifier.assigner.identifier.use ;;
    group_label: "Part of Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: part_of__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.partOf.identifier.assigner.identifier.value ;;
    group_label: "Part of Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: part_of__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.partOf.identifier.assigner.organizationId ;;
    group_label: "Part of Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: part_of__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.partOf.identifier.assigner.reference ;;
    group_label: "Part of Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: part_of__identifier__period__end {
    type: string
    sql: ${TABLE}.partOf.identifier.period.`end` ;;
    group_label: "Part of Identifier Period"
    group_item_label: "End"
  }

  dimension: part_of__identifier__period__start {
    type: string
    sql: ${TABLE}.partOf.identifier.period.start ;;
    group_label: "Part of Identifier Period"
    group_item_label: "Start"
  }

  dimension: part_of__identifier__system {
    type: string
    sql: ${TABLE}.partOf.identifier.system ;;
    group_label: "Part of Identifier"
    group_item_label: "System"
  }

  dimension: part_of__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.partOf.identifier.type.coding ;;
    group_label: "Part of Identifier Type"
    group_item_label: "Coding"
  }

  dimension: part_of__identifier__type__text {
    type: string
    sql: ${TABLE}.partOf.identifier.type.text ;;
    group_label: "Part of Identifier Type"
    group_item_label: "Text"
  }

  dimension: part_of__identifier__use {
    type: string
    sql: ${TABLE}.partOf.identifier.use ;;
    group_label: "Part of Identifier"
    group_item_label: "Use"
  }

  dimension: part_of__identifier__value {
    type: string
    sql: ${TABLE}.partOf.identifier.value ;;
    group_label: "Part of Identifier"
    group_item_label: "Value"
  }

  dimension: part_of__organization_id {
    type: string
    sql: ${TABLE}.partOf.organizationId ;;
    group_label: "Part Of"
    group_item_label: "Organization ID"
  }

  dimension: part_of__reference {
    type: string
    sql: ${TABLE}.partOf.reference ;;
    group_label: "Part Of"
    group_item_label: "Reference"
  }

  dimension: telecom {
    hidden: yes
    sql: ${TABLE}.telecom ;;
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

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [part_of__identifier__assigner__identifier__assigner__organization_id, name, encounter_simple.count, realtime_observation.count]
  }
}

# These sum and average measures are hidden by default.
# If you want them to show up in your explore, remove hidden: yes.


# The name of this view in Looker is "Organization Alias"
view: organization__alias {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Organization Alias" in Explore.

  dimension: organization__alias {
    type: string
    sql: organization__alias ;;
  }
}

# The name of this view in Looker is "Organization Type"
view: organization__type {
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

# The name of this view in Looker is "Organization Address"
view: organization__address {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "City" in Explore.

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.district ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: line {
    hidden: yes
    sql: ${TABLE}.line ;;
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

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postalCode ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }
}

# The name of this view in Looker is "Organization Telecom"
view: organization__telecom {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Period End" in Explore.

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

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
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

# The name of this view in Looker is "Organization Address Line"
view: organization__address__line {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Organization Address Line" in Explore.

  dimension: organization__address__line {
    type: string
    sql: organization__address__line ;;
  }
}

# The name of this view in Looker is "Organization Meta Profile"
view: organization__meta__profile {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Organization Meta Profile" in Explore.

  dimension: organization__meta__profile {
    type: string
    sql: organization__meta__profile ;;
  }
}

# The name of this view in Looker is "Organization Meta Tag"
view: organization__meta__tag {
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

# The name of this view in Looker is "Organization Identifier"
view: organization__identifier {
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

# The name of this view in Looker is "Organization Type Coding"
view: organization__type__coding {
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

# The name of this view in Looker is "Organization Endpoint"
view: organization__endpoint {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Display" in Explore.

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: endpoint_id {
    type: string
    sql: ${TABLE}.endpointId ;;
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

# The name of this view in Looker is "Organization Contact"
view: organization__contact {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Address City" in Explore.

  dimension: address__city {
    type: string
    sql: ${TABLE}.address.city ;;
    group_label: "Address"
    group_item_label: "City"
  }

  dimension: address__country {
    type: string
    sql: ${TABLE}.address.country ;;
    group_label: "Address"
    group_item_label: "Country"
  }

  dimension: address__district {
    type: string
    sql: ${TABLE}.address.district ;;
    group_label: "Address"
    group_item_label: "District"
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: address__line {
    hidden: yes
    sql: ${TABLE}.address.line ;;
    group_label: "Address"
    group_item_label: "Line"
  }

  dimension: address__period__end {
    type: string
    sql: ${TABLE}.address.period.`end` ;;
    group_label: "Address Period"
    group_item_label: "End"
  }

  dimension: address__period__start {
    type: string
    sql: ${TABLE}.address.period.start ;;
    group_label: "Address Period"
    group_item_label: "Start"
  }

  dimension: address__postal_code {
    type: string
    sql: ${TABLE}.address.postalCode ;;
    group_label: "Address"
    group_item_label: "Postal Code"
  }

  dimension: address__state {
    type: string
    sql: ${TABLE}.address.state ;;
    group_label: "Address"
    group_item_label: "State"
  }

  dimension: address__text {
    type: string
    sql: ${TABLE}.address.text ;;
    group_label: "Address"
    group_item_label: "Text"
  }

  dimension: address__type {
    type: string
    sql: ${TABLE}.address.type ;;
    group_label: "Address"
    group_item_label: "Type"
  }

  dimension: address__use {
    type: string
    sql: ${TABLE}.address.use ;;
    group_label: "Address"
    group_item_label: "Use"
  }

  dimension: name__family {
    type: string
    sql: ${TABLE}.name.family ;;
    group_label: "Name"
    group_item_label: "Family"
  }

  dimension: name__given {
    hidden: yes
    sql: ${TABLE}.name.given ;;
    group_label: "Name"
    group_item_label: "Given"
  }

  dimension: name__period__end {
    type: string
    sql: ${TABLE}.name.period.`end` ;;
    group_label: "Name Period"
    group_item_label: "End"
  }

  dimension: name__period__start {
    type: string
    sql: ${TABLE}.name.period.start ;;
    group_label: "Name Period"
    group_item_label: "Start"
  }

  dimension: name__prefix {
    hidden: yes
    sql: ${TABLE}.name.prefix ;;
    group_label: "Name"
    group_item_label: "Prefix"
  }

  dimension: name__suffix {
    hidden: yes
    sql: ${TABLE}.name.suffix ;;
    group_label: "Name"
    group_item_label: "Suffix"
  }

  dimension: name__text {
    type: string
    sql: ${TABLE}.name.text ;;
    group_label: "Name"
    group_item_label: "Text"
  }

  dimension: name__use {
    type: string
    sql: ${TABLE}.name.use ;;
    group_label: "Name"
    group_item_label: "Use"
  }

  dimension: purpose__coding {
    hidden: yes
    sql: ${TABLE}.purpose.coding ;;
    group_label: "Purpose"
    group_item_label: "Coding"
  }

  dimension: purpose__text {
    type: string
    sql: ${TABLE}.purpose.text ;;
    group_label: "Purpose"
    group_item_label: "Text"
  }

  dimension: telecom {
    hidden: yes
    sql: ${TABLE}.telecom ;;
  }
}

# The name of this view in Looker is "Organization Meta Security"
view: organization__meta__security {
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

# The name of this view in Looker is "Organization Contact Name Given"
view: organization__contact__name__given {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Organization Contact Name Given" in Explore.

  dimension: organization__contact__name__given {
    type: string
    sql: organization__contact__name__given ;;
  }
}

# The name of this view in Looker is "Organization Contact Name Prefix"
view: organization__contact__name__prefix {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Organization Contact Name Prefix" in Explore.

  dimension: organization__contact__name__prefix {
    type: string
    sql: organization__contact__name__prefix ;;
  }
}

# The name of this view in Looker is "Organization Contact Name Suffix"
view: organization__contact__name__suffix {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Organization Contact Name Suffix" in Explore.

  dimension: organization__contact__name__suffix {
    type: string
    sql: organization__contact__name__suffix ;;
  }
}

# The name of this view in Looker is "Organization Contact Telecom"
view: organization__contact__telecom {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Period End" in Explore.

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

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
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

# The name of this view in Looker is "Organization Contact Address Line"
view: organization__contact__address__line {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Organization Contact Address Line" in Explore.

  dimension: organization__contact__address__line {
    type: string
    sql: organization__contact__address__line ;;
  }
}

# The name of this view in Looker is "Organization Identifier Type Coding"
view: organization__identifier__type__coding {
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

# The name of this view in Looker is "Organization Contact Purpose Coding"
view: organization__contact__purpose__coding {
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

# The name of this view in Looker is "Organization Part of Identifier Type Coding"
view: organization__part_of__identifier__type__coding {
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

# The name of this view in Looker is "Organization Endpoint Identifier Type Coding"
view: organization__endpoint__identifier__type__coding {
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

# The name of this view in Looker is "Organization Identifier Assigner Identifier Type Coding"
view: organization__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Organization Part of Identifier Assigner Identifier Type Coding"
view: organization__part_of__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Organization Endpoint Identifier Assigner Identifier Type Coding"
view: organization__endpoint__identifier__assigner__identifier__type__coding {
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
