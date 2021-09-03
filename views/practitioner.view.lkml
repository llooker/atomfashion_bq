# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: practitioner {
  hidden: yes

  join: practitioner__name {
    view_label: "Practitioner: Name"
    sql: LEFT JOIN UNNEST(${practitioner.name}) as practitioner__name ;;
    relationship: one_to_many
  }

  join: practitioner__photo {
    view_label: "Practitioner: Photo"
    sql: LEFT JOIN UNNEST(${practitioner.photo}) as practitioner__photo ;;
    relationship: one_to_many
  }

  join: practitioner__name__given {
    view_label: "Practitioner: Name Given"
    sql: LEFT JOIN UNNEST(${practitioner__name.given}) as practitioner__name__given ;;
    relationship: one_to_many
  }

  join: practitioner__address {
    view_label: "Practitioner: Address"
    sql: LEFT JOIN UNNEST(${practitioner.address}) as practitioner__address ;;
    relationship: one_to_many
  }

  join: practitioner__name__prefix {
    view_label: "Practitioner: Name Prefix"
    sql: LEFT JOIN UNNEST(${practitioner__name.prefix}) as practitioner__name__prefix ;;
    relationship: one_to_many
  }

  join: practitioner__name__suffix {
    view_label: "Practitioner: Name Suffix"
    sql: LEFT JOIN UNNEST(${practitioner__name.suffix}) as practitioner__name__suffix ;;
    relationship: one_to_many
  }

  join: practitioner__telecom {
    view_label: "Practitioner: Telecom"
    sql: LEFT JOIN UNNEST(${practitioner.telecom}) as practitioner__telecom ;;
    relationship: one_to_many
  }

  join: practitioner__address__line {
    view_label: "Practitioner: Address Line"
    sql: LEFT JOIN UNNEST(${practitioner__address.line}) as practitioner__address__line ;;
    relationship: one_to_many
  }

  join: practitioner__meta__profile {
    view_label: "Practitioner: Meta Profile"
    sql: LEFT JOIN UNNEST(${practitioner.meta__profile}) as practitioner__meta__profile ;;
    relationship: one_to_many
  }

  join: practitioner__meta__tag {
    view_label: "Practitioner: Meta Tag"
    sql: LEFT JOIN UNNEST(${practitioner.meta__tag}) as practitioner__meta__tag ;;
    relationship: one_to_many
  }

  join: practitioner__identifier {
    view_label: "Practitioner: Identifier"
    sql: LEFT JOIN UNNEST(${practitioner.identifier}) as practitioner__identifier ;;
    relationship: one_to_many
  }

  join: practitioner__meta__security {
    view_label: "Practitioner: Meta Security"
    sql: LEFT JOIN UNNEST(${practitioner.meta__security}) as practitioner__meta__security ;;
    relationship: one_to_many
  }

  join: practitioner__communication {
    view_label: "Practitioner: Communication"
    sql: LEFT JOIN UNNEST(${practitioner.communication}) as practitioner__communication ;;
    relationship: one_to_many
  }

  join: practitioner__qualification {
    view_label: "Practitioner: Qualification"
    sql: LEFT JOIN UNNEST(${practitioner.qualification}) as practitioner__qualification ;;
    relationship: one_to_many
  }

  join: practitioner__communication__coding {
    view_label: "Practitioner: Communication Coding"
    sql: LEFT JOIN UNNEST(${practitioner__communication.coding}) as practitioner__communication__coding ;;
    relationship: one_to_many
  }

  join: practitioner__identifier__type__coding {
    view_label: "Practitioner: Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${practitioner__identifier.type__coding}) as practitioner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: practitioner__qualification__identifier {
    view_label: "Practitioner: Qualification Identifier"
    sql: LEFT JOIN UNNEST(${practitioner__qualification.identifier}) as practitioner__qualification__identifier ;;
    relationship: one_to_many
  }

  join: practitioner__qualification__code__coding {
    view_label: "Practitioner: Qualification Code Coding"
    sql: LEFT JOIN UNNEST(${practitioner__qualification.code__coding}) as practitioner__qualification__code__coding ;;
    relationship: one_to_many
  }

  join: practitioner__qualification__identifier__type__coding {
    view_label: "Practitioner: Qualification Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${practitioner__qualification__identifier.type__coding}) as practitioner__qualification__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: practitioner__identifier__assigner__identifier__type__coding {
    view_label: "Practitioner: Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${practitioner__identifier.assigner__identifier__type__coding}) as practitioner__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: practitioner__qualification__issuer__identifier__type__coding {
    view_label: "Practitioner: Qualification Issuer Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${practitioner__qualification.issuer__identifier__type__coding}) as practitioner__qualification__issuer__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: practitioner__qualification__identifier__assigner__identifier__type__coding {
    view_label: "Practitioner: Qualification Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${practitioner__qualification__identifier.assigner__identifier__type__coding}) as practitioner__qualification__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }

  join: practitioner__qualification__issuer__identifier__assigner__identifier__type__coding {
    view_label: "Practitioner: Qualification Issuer Identifier Assigner Identifier Type Coding"
    sql: LEFT JOIN UNNEST(${practitioner__qualification.issuer__identifier__assigner__identifier__type__coding}) as practitioner__qualification__issuer__identifier__assigner__identifier__type__coding ;;
    relationship: one_to_many
  }
}

# The name of this view in Looker is "Practitioner"
view: practitioner {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker-private-demo.healthcare_demo_live.practitioner`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
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

  dimension: birth_date {
    type: string
    sql: ${TABLE}.birthDate ;;
  }

  dimension: communication {
    hidden: yes
    sql: ${TABLE}.communication ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
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
    hidden: yes
    sql: ${TABLE}.name ;;
  }

  dimension: photo {
    hidden: yes
    sql: ${TABLE}.photo ;;
  }

  dimension: qualification {
    hidden: yes
    sql: ${TABLE}.qualification ;;
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

  # A measure is a field that uses a SQL aggregate function. Here are count, sum, and average
  # measures for numeric dimensions, but you can also add measures of many different types.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [id, name, encounter_simple.count, realtime_observation.count]
  }
}

# These sum and average measures are hidden by default.
# If you want them to show up in your explore, remove hidden: yes.


# The name of this view in Looker is "Practitioner Name"
view: practitioner__name {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Family" in Explore.

  dimension: family {
    type: string
    sql: ${TABLE}.family ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: given {
    hidden: yes
    sql: ${TABLE}.given ;;
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

  dimension: prefix {
    hidden: yes
    sql: ${TABLE}.prefix ;;
  }

  dimension: suffix {
    hidden: yes
    sql: ${TABLE}.suffix ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }
}

# The name of this view in Looker is "Practitioner Photo"
view: practitioner__photo {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Content Type" in Explore.

  dimension: content_type {
    type: string
    sql: ${TABLE}.contentType ;;
  }

  dimension: creation {
    type: string
    sql: ${TABLE}.creation ;;
  }

  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.`hash` ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}.size ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
}

# The name of this view in Looker is "Practitioner Name Given"
view: practitioner__name__given {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Practitioner Name Given" in Explore.

  dimension: practitioner__name__given {
    type: string
    sql: practitioner__name__given ;;
  }
}

# The name of this view in Looker is "Practitioner Address"
view: practitioner__address {
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

# The name of this view in Looker is "Practitioner Name Prefix"
view: practitioner__name__prefix {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Practitioner Name Prefix" in Explore.

  dimension: practitioner__name__prefix {
    type: string
    sql: practitioner__name__prefix ;;
  }
}

# The name of this view in Looker is "Practitioner Name Suffix"
view: practitioner__name__suffix {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Practitioner Name Suffix" in Explore.

  dimension: practitioner__name__suffix {
    type: string
    sql: practitioner__name__suffix ;;
  }
}

# The name of this view in Looker is "Practitioner Telecom"
view: practitioner__telecom {
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

# The name of this view in Looker is "Practitioner Address Line"
view: practitioner__address__line {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Practitioner Address Line" in Explore.

  dimension: practitioner__address__line {
    type: string
    sql: practitioner__address__line ;;
  }
}

# The name of this view in Looker is "Practitioner Meta Profile"
view: practitioner__meta__profile {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Practitioner Meta Profile" in Explore.

  dimension: practitioner__meta__profile {
    type: string
    sql: practitioner__meta__profile ;;
  }
}

# The name of this view in Looker is "Practitioner Meta Tag"
view: practitioner__meta__tag {
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

# The name of this view in Looker is "Practitioner Identifier"
view: practitioner__identifier {
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

# The name of this view in Looker is "Practitioner Meta Security"
view: practitioner__meta__security {
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

# The name of this view in Looker is "Practitioner Communication"
view: practitioner__communication {
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

# The name of this view in Looker is "Practitioner Qualification"
view: practitioner__qualification {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: code__coding {
    hidden: yes
    sql: ${TABLE}.code.coding ;;
    group_label: "Code"
    group_item_label: "Coding"
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Code Text" in Explore.

  dimension: code__text {
    type: string
    sql: ${TABLE}.code.text ;;
    group_label: "Code"
    group_item_label: "Text"
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: issuer__display {
    type: string
    sql: ${TABLE}.issuer.display ;;
    group_label: "Issuer"
    group_item_label: "Display"
  }

  dimension: issuer__identifier__assigner__display {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.display ;;
    group_label: "Issuer Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: issuer__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.assigner.display ;;
    group_label: "Issuer Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: issuer__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Issuer Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: issuer__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Issuer Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: issuer__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.period.`end` ;;
    group_label: "Issuer Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: issuer__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.period.start ;;
    group_label: "Issuer Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: issuer__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.system ;;
    group_label: "Issuer Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: issuer__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.issuer.identifier.assigner.identifier.type.coding ;;
    group_label: "Issuer Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: issuer__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.type.text ;;
    group_label: "Issuer Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: issuer__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.use ;;
    group_label: "Issuer Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: issuer__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.identifier.value ;;
    group_label: "Issuer Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: issuer__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.organizationId ;;
    group_label: "Issuer Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: issuer__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.issuer.identifier.assigner.reference ;;
    group_label: "Issuer Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: issuer__identifier__period__end {
    type: string
    sql: ${TABLE}.issuer.identifier.period.`end` ;;
    group_label: "Issuer Identifier Period"
    group_item_label: "End"
  }

  dimension: issuer__identifier__period__start {
    type: string
    sql: ${TABLE}.issuer.identifier.period.start ;;
    group_label: "Issuer Identifier Period"
    group_item_label: "Start"
  }

  dimension: issuer__identifier__system {
    type: string
    sql: ${TABLE}.issuer.identifier.system ;;
    group_label: "Issuer Identifier"
    group_item_label: "System"
  }

  dimension: issuer__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.issuer.identifier.type.coding ;;
    group_label: "Issuer Identifier Type"
    group_item_label: "Coding"
  }

  dimension: issuer__identifier__type__text {
    type: string
    sql: ${TABLE}.issuer.identifier.type.text ;;
    group_label: "Issuer Identifier Type"
    group_item_label: "Text"
  }

  dimension: issuer__identifier__use {
    type: string
    sql: ${TABLE}.issuer.identifier.use ;;
    group_label: "Issuer Identifier"
    group_item_label: "Use"
  }

  dimension: issuer__identifier__value {
    type: string
    sql: ${TABLE}.issuer.identifier.value ;;
    group_label: "Issuer Identifier"
    group_item_label: "Value"
  }

  dimension: issuer__organization_id {
    type: string
    sql: ${TABLE}.issuer.organizationId ;;
    group_label: "Issuer"
    group_item_label: "Organization ID"
  }

  dimension: issuer__reference {
    type: string
    sql: ${TABLE}.issuer.reference ;;
    group_label: "Issuer"
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
}

# The name of this view in Looker is "Practitioner Communication Coding"
view: practitioner__communication__coding {
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

# The name of this view in Looker is "Practitioner Identifier Type Coding"
view: practitioner__identifier__type__coding {
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

# The name of this view in Looker is "Practitioner Qualification Identifier"
view: practitioner__qualification__identifier {
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

# The name of this view in Looker is "Practitioner Qualification Code Coding"
view: practitioner__qualification__code__coding {
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

# The name of this view in Looker is "Practitioner Qualification Identifier Type Coding"
view: practitioner__qualification__identifier__type__coding {
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

# The name of this view in Looker is "Practitioner Identifier Assigner Identifier Type Coding"
view: practitioner__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Practitioner Qualification Issuer Identifier Type Coding"
view: practitioner__qualification__issuer__identifier__type__coding {
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

# The name of this view in Looker is "Practitioner Qualification Identifier Assigner Identifier Type Coding"
view: practitioner__qualification__identifier__assigner__identifier__type__coding {
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

# The name of this view in Looker is "Practitioner Qualification Issuer Identifier Assigner Identifier Type Coding"
view: practitioner__qualification__issuer__identifier__assigner__identifier__type__coding {
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
