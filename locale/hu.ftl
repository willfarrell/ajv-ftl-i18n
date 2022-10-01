-default-message = must pass "{$keyword}" keyword validation
-comparison-limit = kell legyen {$comparison} {$limit}

items = nem lehet több, mint {$limit} eleme
additionalItems = {items}
additionalProperties = nem lehetnek további elemei
anyOf = meg kell feleljen legalább egy "anyOf" alaknak
const = must be equal to constant
contains = must contain a valid item
dependencies = -nak kell {$depsCount -> 
    [one] legyen
    *[other] legyenek
  } a következő {$depsCount -> 
    [one] tulajdonsága
    *[other] tulajdonságai
  }: {$deps}, ha van {$property} tulajdonsága
dependentRequired = {dependencies}
enum = egyenlő kell legyen valamely előre meghatározott értékkel
falseSchema = boolean schema is false
format = meg kell feleljen a következő formátumnak: "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = must match "{$failingKeyword}" schema
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = nem lehet több, mint {$limit} eleme
maxLength = nem lehet hosszabb, mint {$limit} szimbólum
maxProperties = nem lehet több, mint {$limit} tulajdonsága
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = nem lehet kevesebb, mint {$limit} eleme
minLength = nem lehet rövidebb, mint {$limit} szimbólum
minProperties = nem lehet kevesebb, mint {$limit} tulajdonsága
multipleOf = a többszöröse kell legyen a következő számnak: {$multipleOf}
not = nem lehet érvényes a "not" alaknak megfelelően
oneOf = meg kell feleljen pontosan egy "oneOf" alaknak
pattern = meg kell feleljen a következő mintának: "{$pattern}"
patternRequired = must have property matching pattern "{$missingPattern}"

propertyNames = property name is invalid
required = kell legyen {$missingProperty} tulajdonsága
type = {$type}{$nullable -> 
  [true] /null
  *[default] {""}
} kell legyen
unevaluatedItems = must not have more than {$len} {$len ->
  [one] item
  *[other] items
}
unevaluatedProperties = must not have unevaluated properties
uniqueItems = nem lehetnek azonos elemei ({$j} és {$i} elemek azonosak)

# jtd
discriminator = {$error -> 
    [tag] tag "{$tag}" must be string
    [mapping] value of tag "{$tag}" must be in mapping
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] nem lehetnek további elemei
    [missing] kell legyen {$missingProperty} tulajdonsága
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = meg kell feleljen legalább egy "union" alaknak
