-default-message = muss die Validierung "{$keyword}" bestehen
-comparison-limit = muss {$comparison} {$limit} sein

items = darf nicht mehr als {$limit} {$limit ->
  [one] Element
  *[other] Elemente
  } enthalten
additionalItems = {items}
additionalProperties = darf keine zusätzlichen Attribute haben
anyOf = muss einem der Schemata in "anyOf" entsprechen
const = muss gleich der Konstanten sein
contains = muss ein valides Element enthalten
dependencies = muss {$depsCount -> 
    [one] Attribut
    *[other] Attribute
  } {$deps} aufweisen, wenn Attribut {$property} gesetzt ist
dependentRequired = {dependencies}
enum = muss einem der vorgegebenen Werte entsprechen
falseSchema = boolesches Schema ist falsch
format = muss diesem Format entsprechen: "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = muss dem Schema "{$failingKeyword}" entsprechen
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = darf nicht mehr als {$limit} {$limit ->
  [one] Element
  *[other] Elemente
  } haben
maxLength = darf nicht länger als {$limit} Zeichen sein
maxProperties = darf nicht mehr als {$limit} {$limit ->
  [one] Attribut
  *[other] Attribute
  } haben
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = darf nicht weniger als {$limit} {$limit ->
  [one] Element
  *[other] Elemente
  } haben
minLength = darf nicht kürzer als {$limit} Zeichen sein
minProperties = darf nicht weniger als {$limit} {$limit ->
  [one] Attribut
  *[other] Attribute
  } haben
multipleOf = muss ein Vielfaches von {$multipleOf} sein
not = muss dem in "not" angegebenen Schema widersprechen
oneOf = muss genau einem der Schemata in "oneOf" entsprechen
pattern = muss diesem Muster entsprechen: "{$pattern}"
patternRequired = muss ein Attribut nach folgendem Muster haben "{$missingPattern}"

propertyNames = Attributname ist ungültig
required = muss das erforderliche Attribut {$missingProperty} enthalten
type = muss sein: {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}
unevaluatedItems = darf nicht mehr als {$len} {$len ->
  [one] Element
  *[other] Elemente
} haben
unevaluatedProperties = darf keine unausgewerteten Attribute haben
uniqueItems = darf keine Duplikate enthalten (Elemente #{$j} und #{$i} sind gleich)

# jtd
discriminator = {$error -> 
    [tag] der Tag "{$tag}" muss eine Zeichenkette sein
    [mapping] der Wert vom Tag "{$tag}" muss im oneOf enthalten sein
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] darf keine zusätzlichen Attribute haben
    [missing] muss das erforderliche Attribut {$missingProperty} enthalten
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = muss einem der Schemata in "union" entsprechen
