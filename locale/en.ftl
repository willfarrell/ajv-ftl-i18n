-default-message = must pass "{$keyword}" keyword validation
-comparison-limit = must be {$comparison} {$limit}

items = must not have more than {$limit} {$limit ->
  [one] item
  *[other] items
  }
additionalItems = {items}
additionalProperties = must not have additional properties
anyOf = must match a schema in "anyOf"
const = must be equal to constant
contains = must contain a valid item
dependencies = must have {$depsCount -> 
    [one] property
    *[other] properties
  } {$deps} when property {$property} is present
dependentRequired = {dependencies}
enum = must be equal to one of the allowed values
falseSchema = boolean schema is false
format = must match format "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = must match "{$failingKeyword}" schema
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = must not have more than {$limit} {$limit ->
  [one] item
  *[other] items
  }
maxLength = must not be longer than {$limit} {$limit ->
  [one] character
  *[other] characters
  }
maxProperties = must not have more than {$limit} {$limit ->
  [one] property
  *[other] properties
  }
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = must not have less than {$limit} {$limit ->
  [one] item
  *[other] items
  }
minLength = must not be shorter than {$limit} {$limit ->
  [one] character
  *[other] characters
  }
minProperties = must not have less than {$limit} {$limit ->
  [one] property
  *[other] properties
  }
multipleOf = must be a multiple of {$multipleOf}
not = must not be valid according to schema in "not"
oneOf = must match exactly one schema in "oneOf"
pattern = must match pattern "{$pattern}"
patternRequired = must have property matching pattern "{$missingPattern}"

propertyNames = property name is invalid
required = must have required property {$missingProperty}
type = must be {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}
unevaluatedItems = must not have more than {$len} {$len ->
  [one] item
  *[other] items
}
unevaluatedProperties = must not have unevaluated properties
uniqueItems = must not have duplicate items (items ## {$j} and {$i} are identical)

# jtd
discriminator = {$error -> 
    [tag] tag "{$tag}" must be string
    [mapping] value of tag "{$tag}" must be in mapping
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] must not have additional properties
    [missing] must have property {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = must match a schema in "union"
