-default-message = musí vyhovět "{$keyword}" validaci
-comparison-limit = musí být {$comparison} {$limit}

items = nemůže mít víc, než {$limit} {$limit ->
  [one] prvků
  [few] prvky
  *[other] prvek
  }
additionalItems = {items}
additionalProperties = nemůže mít další položky
anyOf = musí vyhovět alespoň jednomu schématu v "anyOf"
const = musí být roven konstantě
contains = musí obsahovat prvek odpovídající schématu
dependencies = musí mít {$depsCount -> 
    [one] položka
    [few] položky
    *[other] položek
  }: {$deps}, pokud obsahuje {$property}
dependentRequired = {dependencies}
enum = musí být rovno jedné hodnotě z výčtu
falseSchema = schéma je false
format = musí být ve formátu "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = musí vyhovět "{$failingKeyword}" schématu
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = nesmí obsahovat víc než {$limit} {$limit ->
  [one] prvků
  [few] prvky
  *[other] prvek
  }
maxLength = nesmí být delší než {$limit} {$limit ->
  [one] znaků
  [few] znaky
  *[other] znaek
  }
maxProperties = nesmí mít víc než {$limit} {$limit ->
  [one] položka
  [few] položky
  *[other] položek
  }
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = nesmí obsahovat méně než {$limit} {$limit ->
  [one] prvků
  [few] prvky
  *[other] prvek
  }
minLength = nesmí být kratší než {$limit} {$limit ->
  [one] znaků
  [few] znaky
  *[other] znaek
  }
minProperties = nesmí mít méně než {$limit} {$limit ->
  [one] položka
  [few] položky
  *[other] položek
  }
multipleOf = musí být násobkem {$multipleOf}
not = nesmí vyhovět schématu v "not"
oneOf = musí vyhovět právě jednomu schématu v "oneOf"
pattern = musí vyhovět regulárnímu výrazu "{$pattern}"
patternRequired = musí obsahovat položku vyhovující regulárnímu výrazu "{$missingPattern}"

propertyNames = název položky není platný
required = musí obsahovat požadovanou položku {$missingProperty}
type = musí být {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}
unevaluatedItems = must not have more than {$len} {$len ->
  [one] item
  *[other] items
}
unevaluatedProperties = must not have unevaluated properties
uniqueItems = nesmí obsahovat duplicitní prvky (prvky ## {$j} a {$i} jsou identické)

# jtd
discriminator = {$error -> 
    [tag] tag "{$tag}" must be string
    [mapping] value of tag "{$tag}" must be in mapping
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] nemůže mít další položky
    [missing] musí obsahovat požadovanou položku {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = musí vyhovět alespoň jednomu schématu v "union"
