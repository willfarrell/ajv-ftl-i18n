-default-message = må samsvare med valideringen for "{$keyword}"
-comparison-limit = må være {$comparison} {$limit}

items = kan ikke ha mer enn {$limit} {$limit ->
  [one] element
  *[other] elementer
  }
additionalItems = {items}
additionalProperties = kan ikke ha flere egenskaper
anyOf = må samsvare med et schema i "anyOf"
const = må være lik konstanten
contains = må inneholde et gyldig element
dependencies = må ha {$depsCount -> 
    [one] egenskapen
    *[other] egenskapene
  } {$deps} når egenskapen {$property} er angitt
dependentRequired = {dependencies}
enum = må være lik en av de forhåndsdefinerte verdiene
falseSchema = boolsk schema er usannt
format = må stemme overens med formatet "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = må samsvare med skjemaet "{$failingKeyword}"
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = kan ikke ha fler enn {$limit} {$limit ->
  [one] element
  *[other] elementer
  }
maxLength = kan ikke være lengre enn {$limit} tegn
maxProperties = kan ikke ha mer enn {$limit} {$limit ->
  [one] egenskap
  *[other] egenskaper
  }
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = kan ikke ha færre enn {$limit} {$limit ->
  [one] element
  *[other] elementer
  }
minLength = kan ikke være kortere enn {$limit} tegn
minProperties = kan ikke ha mindre enn {$limit} {$limit ->
  [one] egenskap
  *[other] egenskaper
  }
multipleOf = må være et multiplum av {$multipleOf}
not = kan ikke samsvare med schema i "not"
oneOf = må samsvare med nøyaktig ett schema i "oneOf"
pattern = må samsvare med mønsteret "{$pattern}"
patternRequired = må ha en egenskap som samsvarer med mønsteret "{$missingPattern}"
propertyNames = egenskapsnavnet er ugyldig
required = må ha den påkrevde egenskapen {$missingProperty}
type = må være {$type ->
  [number] et tall
  [integer] et heltall
  [string] en streng
  [boolean] ja eller nei
  *[default] {$type}
}{$nullable -> 
  [true] /null
  *[default] {""}
}
unevaluatedItems = kan ikke ha fler enn {$len} {$len ->
[one] element
*[other] elementer
}
unevaluatedProperties = må ikke ha uevaluerte egenskaper
uniqueItems = kan ikke ha duplikate elemeneter (elementene ## {$j} og {$i} er identiske)

# jtd
discriminator = {$error -> 
    [tag] tag "{$tag}" må være streng
    [mapping] verdien av taggen "{$tag}" må være i tilordning
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] kan ikke ha flere egenskaper
    [missing] må ha den påkrevde egenskapen {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = må samsvare med et schema i "union"
