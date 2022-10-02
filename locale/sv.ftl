-default-message = bör passera "{$keyword}" nyckelord validering
-comparison-limit-format = bör vara {$comparison} {$limit}
-comparison-limit = borde vara {$comparison} {$limit}

items = borde ha fler än {$limit} {$limit ->
  [one] sak
  *[other] saker
  }
additionalItems = {items}
additionalProperties = borde inte ha fler egenskaper
anyOf = borde matcha något schema i "anyOf"
const = bör vara en konstant
contains = bör innehålla ett giltigt objekt
dependencies = borde ha {$depsCount -> 
    [one] egenskap
    *[other] egenskaper
  } {$deps} när egenskap {$property} finns tillgängligt
dependentRequired = {dependencies}
enum = borde vara ekvivalent med en av dess fördefinierade värden
falseSchema = boolean schema är falskt
format = borde matcha formatet "{$format}"
formatMaximum = {-comparison-limit-format}
formatExclusiveMaximum = {-comparison-limit-format}
formatMinimum = {-comparison-limit-format}
formatExclusiveMinimum = {-comparison-limit-format}
if = måste matcha schemat "{$failingKeyword}"
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = borde inte ha fler än {$limit} {$limit ->
  [one] sak
  *[other] saker
  }
maxLength = borde inte vara längre än {$limit} tecken
maxProperties = borde inte ha fler än {$limit} {$limit ->
  [one] egenskap
  *[other] egenskaper
  }
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = borde inte ha färre än {$limit} {$limit ->
  [one] sak
  *[other] saker
  }
minLength = borde inte vara kortare än {$limit} tecken
minProperties = borde inte ha färre än {$limit} {$limit ->
  [one] egenskap
  *[other] egenskaper
  }
multipleOf = borde vara en multipel av {$multipleOf}
not = borde inte vara giltigt enligt schema i "not"
oneOf = borde matcha exakt ett schema i "oneOf"
pattern = borde matcha mönstret "{$pattern}"
patternRequired = bör ha en egenskap som matchar mönstret "{$missingPattern}"

propertyNames = egenskap med namnet är inte giltig
required = borde ha den nödvändiga egenskapen {$missingProperty}
type = borde vara {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}
unevaluatedItems = borde inte ha fler än {$len} {$len ->
  [one] sak
  *[other] saker
  }
unevaluatedProperties = får inte ha obedömda egenskaper
uniqueItems = borde inte ha duplicerade saker (sakerna ## {$j} och {$i} är identiska)

# jtd
discriminator = {$error -> 
    [tag] taggen "{$tag}" måste vara sträng
    [mapping] värdet för taggen "{$tag}" måste vara i mappningen
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] borde inte ha fler egenskaper
    [missing] borde ha den nödvändiga egenskapen {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = borde matcha något schema i "union"
