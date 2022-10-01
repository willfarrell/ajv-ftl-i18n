-default-message = powinien przejść walidację "{$keyword}"
-comparison-limit = powinien być {$comparison} {$limit}

items = nie powinien mieć więcej niż {$limit} {$limit ->
  [one] elementu
  *[other] elementów
  }
additionalItems = {items}
additionalProperties = nie powinien zawierać dodatkowych pól
anyOf = powinien pasować do wzoru z sekcji "anyOf"
const = powinien być równy stałej
contains = must contain a valid item
dependencies = powinien zawierać {$depsCount -> 
    [one] pole
    *[other] pola
  } {$deps} kiedy pole {$property} jest obecne
dependentRequired = {dependencies}
enum = powinien być równy jednej z predefiniowanych wartości
falseSchema = boolean schema is false
format = powinien zgadzać się z formatem "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = must match "{$failingKeyword}" schema
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = nie powinien mieć więcej niż {$limit} {$limit ->
  [one] elementu
  *[other] elementw
  }
maxLength = nie powinien być dłuższy niż {$limit} {$limit ->
  [one] znak
  *[other] znaków
  }
maxProperties = nie powinien zawierać więcej niż {$limit} {$limit ->
  [one] pole
  *[other] pól
  }
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = nie powinien mieć mniej niż {$limit} {$limit ->
  [one] elementu
  *[other] elementów
  }
minLength = nie powinien być krótszy niż {$limit} {$limit ->
  [one] znak
  *[other] znaków
  }
minProperties = nie powinien zawierać mniej niż {$limit} {$limit ->
  [one] pole
  *[other] pól
  }
multipleOf = powinien być wielokrotnością {$multipleOf}
not = nie powinien pasować do wzoru z sekcji "not"
oneOf = powinien pasować do jednego wzoru z sekcji "oneOf"
pattern = powinien zgadzać się ze wzorem "{$pattern}"
patternRequired = powinien mieć pole pasujące do wzorca "{$missingPattern}"

propertyNames = property name is invalid
required = powinien zawierać wymagane pole {$missingProperty}
type = powinien być {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}
unevaluatedItems = must NOT have more than {$len} {$len ->
  [one] item
  *[other] items
}
unevaluatedProperties = must NOT have unevaluated properties
uniqueItems = nie powinien zawierać elementów które się powtarzają (elementy {$j} i {$i} są identyczne)

# jtd
discriminator = {$error -> 
    [tag] tag "{$tag}" must be string
    [mapping] value of tag "{$tag}" must be in mapping
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] nie powinien zawierać dodatkowych pól
    [missing] powinien zawierać wymagane pole {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = powinien pasować do wzoru z sekcji "union"
