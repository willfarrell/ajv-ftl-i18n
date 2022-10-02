-default-message = musí splniť "{$keyword}" validáciu
-comparison-limit = musí byť {$comparison} {$limit}

items = nemôže obsahovať viac, než {$limit} {$limit ->
  [one] prvok
  *[other] prvkov
  }
additionalItems = {items}
additionalProperties = nemôže obsahovať ďalšie položky
anyOf = musí splňovať aspoň jednu zo schém v "anyOf"
const = musí byť konštanta
contains = musí obsahovať prvok zodpovedajúci schéme
dependencies = musí obsahovať {$depsCount -> 
    [one] položka
    [few] položky
    *[other] položiek
  }: {$deps}, ak obsahuje {$property}
dependentRequired = {dependencies}
enum = musí byť jedna z definovaných hodnôt
falseSchema = schéma je false
format = musí obsahovať formát "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = musí sa zhodovať so schémou "{$failingKeyword}"
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = nesmie obsahovať viac než {$limit} {$limit ->
  [one] prvok
  *[other] prvkov
  }
maxLength = nesmie byť dlhší než {$limit} {$limit ->
  [one] znak
  *[other] znakov
  }
maxProperties = nesmie obsahovať viac než {$limit} {$limit ->
  [one] položka
  [few] položky
  *[other] položiek
  }
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = nesmie obsahovať menej než {$limit} {$limit ->
  [one] prvok
  *[other] prvkov
  }
minLength = nesmie byť kratší než {$limit} {$limit ->
  [one] znak
  *[other] znakov
  }
minProperties = nesmie obsahovať menej než {$limit} {$limit ->
  [one] položka
  [few] položky
  *[other] položiek
  }
multipleOf = musí byť násobkom {$multipleOf}
not = nesmie splňovať schému v "not"
oneOf = musí splňovať práve jednu schému v "oneOf"
pattern = musí splňovať regulárny výraz "{$pattern}"
patternRequired = musí obsahovať položku splňjúcu regulárny výraz "{$missingPattern}"
propertyNames = názov položky nezodpovedá schéme
required = musí obsahovať požadovanú položku {$missingProperty}
type = musí byť {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}
unevaluatedItems = nesmie obsahovať viac než {$len} {$len ->
[one] prvok
*[other] prvkov
}
unevaluatedProperties = nesmú mať neohodnotené vlastnosti
uniqueItems = nesmie obsahovať duplicitné prvky (prvky ## {$j} a {$i} sú rovnaké)

# jtd
discriminator = {$error -> 
    [tag] značka "{$tag}" musí byť reťazec
    [mapping] hodnota značky "{$tag}" musí byť v mapovaní
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] nemôže obsahovať ďalšie položky
    [missing] musí obsahovať požadovanú položku {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = musí splňovať aspoň jednu zo schém v "union"
