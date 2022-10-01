-default-message = täytyy läpäistä "{$keyword}" avainsanatarkistus
-comparison-limit = täytyy olla {$comparison} {$limit}

items = saa sisältää enintään {$limit}{$limit ->
  [one] :n elementin
  *[other]  elementtiä
  }
additionalItems = {items}
additionalProperties = ei saa sisältää ylimääräisiä ominaisuuksia
anyOf = täytyy vastata "anyOf" skeemaa
const = täytyy olla yhtä kuin vakio
contains = täytyy sisältää kelvollinen elementti
dependencies = täytyy sisältää {$deps} {$depsCount -> 
    [one] ominaisuus
    *[other] ominaisuudet
  } kun {$property}-ominaisuus on läsnä
dependentRequired = {dependencies}
enum = täytyy olla yhtä kuin jokin sallituista arvoista
falseSchema = boolean skeema on väärä
format = täytyy vastata muotoa "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = täytyy vastata "{$failingKeyword}" skeemaa
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = tulee sisältää enintään {$limit} {$limit ->
  [one] elementti
  *[other] elementtiä
  }
maxLength = ei saa olla pidempi kuin {$limit} {$limit ->
  [one] merkki
  *[other] merkkiä
  }
maxProperties = tulee sisältää enintään {$limit} {$limit ->
  [one] ominaisuus
  *[other] ominaisuutta
  }
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = tulee sisältää vähintään {$limit} {$limit ->
  [one] elementti
  *[other] elementtiä
  }
minLength = ei saa olla lyhyempi kuin {$limit} {$limit ->
  [one] merkki
  *[other] merkkiä
  }
minProperties = tulee sisältää vähintään {$limit} {$limit ->
  [one] ominaisuus
  *[other] ominaisuutta
  }
multipleOf = täytyy olla moninkertainen: {$multipleOf}
not = ei saa olla hyväksytty skeeman "not" mukaan
oneOf = täytyy vastata täsmälleen yhtä "oneOf" -kohdassa määriteltyä skeemaa
pattern = täytyy vastata muotoa "{$pattern}"
patternRequired = täytyy sisältää ominaisuus joka vastaa kaavaa "{$missingPattern}"

propertyNames = ominaisuuden nimi on virheellinen
required = täytyy sisältää vaadittu ominaisuus {$missingProperty}
type = täytyy olla {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}
unevaluatedItems = ei saa olla enemmän kuin {$len} {$len ->
  [one] elementti
  *[other] elementtiä
}
unevaluatedProperties = ei saa sisältää arvioimattomia ominaisuuksia
uniqueItems = ei saa sisältää duplikaatteja (elementit ## {$j} ja {$i} ovat identtiset)

# jtd
discriminator = {$error -> 
    [tag] tunniste "{$tag}" täytyy olla merkkijono
    [mapping] tunnisteen arvon "{$tag}" on oltava kartoituksessa
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] ei saa sisältää ylimääräisiä ominaisuuksia
    [missing] täytyy sisältää ominaisuus {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = täytyy vastata "union" skeemaa
