-default-message = ha de passar la validació de la clau "{$keyword}"
-comparison-limit = ha de ser {$comparison} {$limit}

items = no ha de tenir més de {$limit} {$limit ->
  [one] element
  *[other] elements
  }
additionalItems = {items}
additionalProperties = no ha de tenir propietats addicionals
anyOf = ha de coincidir amb algun esquema definit a "anyOf"
const = ha de ser igual a la constant
contains = ha de contenir un ítem vàlid
dependencies = ha de contenir la {$depsCount -> 
    [one] propietat
    *[other] propietats
  } {$deps} quan la propietat {$property} és present
dependentRequired = {dependencies}
enum = ha de ser igual a un dels valors predefinits
falseSchema = l’esquema és fals
format = ha de coincidir amb el format "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = ha de correspondre’s amb l’esquema "{$failingKeyword}"
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = no ha de tenir més de {$limit} {$limit ->
  [one] ítem
  *[other] ítems
  }
maxLength = no pot contenir més de {$limit} {$limit ->
  [one] caràcter
  *[other] caràcters
  }
maxProperties = no pot contenir més de {$limit} {$limit ->
  [one] propietat
  *[other] propietats
  }
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = no ha de tenir menys de {$limit} {$limit ->
  [one] ítem
  *[other] ítems
  }
minLength = no pot contenir menys de {$limit} {$limit ->
  [one] caràcter
  *[other] caràcters
  }
minProperties = no pot contenir menys de {$limit} {$limit ->
  [one] propietat
  *[other] propietats
  }
multipleOf = ha de ser múltiple de {$multipleOf}
not = no ha de ser vàlid d’acord amb l’esquema definit a "not"
oneOf = ha de coincidir només amb un esquema definit a "oneOf"
pattern = ha de coincidir amb el patró "{$pattern}"
patternRequired = la propietat ha de coincidir amb el patró "{$missingPattern}"

propertyNames = la propietat no és vàlida
required = ha de tenir la propietat requerida {$missingProperty}
type = ha de ser del tipus {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}
unevaluatedItems = must not have more than {$len} {$len ->
  [one] item
  *[other] items
}
unevaluatedProperties = must not have unevaluated properties
uniqueItems = no ha de tenir ítems duplicats (els ítems ## {$j} i {$i} són idèntics)

# jtd
discriminator = {$error -> 
    [tag] tag "{$tag}" must be string
    [mapping] value of tag "{$tag}" must be in mapping
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] no ha de tenir propietats addicionals
    [missing] ha de tenir la propietat requerida {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = ha de coincidir amb algun esquema definit a "union"
