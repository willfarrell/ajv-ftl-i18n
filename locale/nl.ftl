-default-message = moet sleutelwoord validatie "{$keyword}" doorstaan
-comparison-limit = moet {$comparison} {$limit} zijn

items = mag niet meer dan {$limit} {$limit ->
  [one] item
  *[other] items
  } bevatten
additionalItems = {items}
additionalProperties = mag geen extra eigenschappen bevatten
anyOf = moet overeenkomen met een schema in "anyOf"
const = moet gelijk zijn aan constante
contains = moet een geldig item bevatten
dependencies = moet de {$depsCount -> 
    [one] eigenschap
    *[other] eigenschappen
  } {$deps} bevatten als {$property} is gedefinieerd
dependentRequired = {dependencies}
enum = moet overeenkomen met één van de voorgedefinieerde waarden
falseSchema = boolean schema is fout
format = moet overeenkomen met het volgende formaat: "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = moet overeenkomen met "{$failingKeyword}" schema
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = mag niet meer dan {$limit} {$limit ->
  [one] item
  *[other] items
  } bevatten
maxLength = mag niet langer dan {$limit} {$limit ->
  [one] karakter
  *[other] karakters
  } zijn
maxProperties = mag niet meer dan {$limit} {$limit ->
  [one] eigenschap
  *[other] eigenschappen
  } bevatten
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = mag niet minder dan {$limit} {$limit ->
  [one] item
  *[other] items
  } bevatten
minLength = mag niet korter dan {$limit} {$limit ->
  [one] karakter
  *[other] karakters
  } zijn
minProperties = mag niet minder dan {$limit} {$limit ->
  [one] eigenschap
  *[other] eigenschappen
  } bevatten
multipleOf = moet een veelvoud van {$multipleOf} zijn
not = mag niet overeenkomen met een schema in "not"
oneOf = moet overeenkomen met één schema in "oneOf"
pattern = moet overeenkomen met het volgende patroon: "{$pattern}"
patternRequired = moet een eigenschap bevatten die overeenkomt met het pattroon: "{$missingPattern}"

propertyNames = eigenschapnaam is ongeldig
required = moet de eigenschap {$missingProperty} bevatten
type = moet een {$type ->
  [number] nummer
  [integer] geheel getal
  [string] tekenreeks
  [boolean] ja of nee waarde
  *[default] {$type}
}{$nullable -> 
  [true] /null
  *[default] {""}
} bevatten
unevaluatedItems = mag niet meer dan {$len} {$len ->
  [one] item
  *[other] items
} bevatten
unevaluatedProperties = mag geen ongecontroleerde eigenschappen bevatten
uniqueItems =mag geen gedupliceerde items bevatten (items ## {$j} en {$i} zijn identiek)

# jtd
discriminator = {$error -> 
    [tag] tag "{$tag}" moet een tekenreeks zijn
    [mapping] de waarde van het veld "{$tag}" moet voorkomen in de mapping
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] mag geen extra eigenschappen bevatten
    [missing] moet de eigenschap {$missingProperty} bevatten
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = moet overeenkomen met een schema in "union"
