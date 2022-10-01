-default-message = deve essere valido secondo il criterio "{$keyword}"
-comparison-limit = deve essere {$comparison} {$limit}

items = non dovrebbe avere più di {$limit} {$limit ->
  [one] elemento
  *[other] elementi
  }
additionalItems = {items}
additionalProperties = non deve avere attributi aggiuntivi
anyOf = deve corrispondere ad uno degli schema in "anyOf"
const = deve essere uguale alla costante
contains = deve contentere un elemento valido
dependencies = dovrebbe avere {$depsCount -> 
    [one] l'attributo
    *[other] gliattributi
  } {$deps} quando l'attributo {$property} è presente
dependentRequired = {dependencies}
enum = deve essere uguale ad uno dei valori consentiti
falseSchema = lo schema booleano è falso
format = deve corrispondere al formato "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = deve corrispondere allo schema "{$failingKeyword}"
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = non deve avere più di {$limit} {$limit ->
  [one] elemento
  *[other] elementi
  }
maxLength = non deve essere più lungo di {$limit} {$limit ->
  [one] carattere
  *[other] caratteri
  }
maxProperties = non deve avere più di {$limit} {$limit ->
  [one] attributo
  *[other] attributi
  }
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = non deve avere meno di {$limit} {$limit ->
  [one] elemento
  *[other] elementi
  }
minLength = non deve essere meno lungo di {$limit} {$limit ->
  [one] carattere
  *[other] caratteri
  }
minProperties = non deve avere meno di {$limit} {$limit ->
  [one] attributo
  *[other] attributi
  }
multipleOf = deve essere un multiplo di {$multipleOf}
not = non deve essere valido in base allo schema di "not"
oneOf = deve corrispondere esattamente ad uno degli schema in "oneOf"
pattern = deve corrispondere al formato "{$pattern}"
patternRequired = deve avere un attributo che corrisponda al formato "{$missingPattern}"

propertyNames = il nome dell'attritbuto non è valido
required = deve avere l'attributo obbligatorio {$missingProperty}
type = deve essere di tipo {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}
unevaluatedItems = non deve avere più di {$len} {$len ->
  [one] elementio
  *[other] elementii
}
unevaluatedProperties = non deve avere attributi non valutati
uniqueItems = non deve avere duplicati (gli elementi ## {$j} e {$i} sono uguali)

# jtd
discriminator = {$error -> 
    [tag] il tag "{$tag}" deve essere di tipo stringa
    [mapping] il valore del tag "{$tag}" deve essere nei mapping
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] non deve avere attributi addizionali
    [missing] deve avere l'attributo obbligatorio {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = deve corrispondere ad uno schema in "union"
