-default-message = debe pasar la validación de palabra clave "{$keyword}"
-comparison-limit = debe ser {$comparison} {$limit}

items = no debe tener más de {$limit} {$limit ->
  [one] elemento
  *[other] elementos
  }
additionalItems = {items}
additionalProperties = no debe tener propiedades adicionales
anyOf = debe coincidir con algún esquema en "anyOf"
const = debe ser igual a la constante
contains = debe contener un elemento válido
dependencies = debe contener {$depsCount -> 
    [one] la
    *[other] las
  } {$depsCount -> 
    [one] propiedad
    *[other] propiedades
  } {$deps} cuando la propiedad {$property} se encuentra presente
dependentRequired = {dependencies}
enum = deber ser igual a uno de los valores predefinidos
falseSchema = el esquema és falso
format = debe coincidir con el formato "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = debe corresponderse con el esquema "{$failingKeyword}"
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = no debe contener más de {$limit} {$limit ->
  [one] elemento
  *[other] elementos
  }
maxLength = no debe contener más de {$limit} {$limit ->
  [one] caracter
  *[other] caracteres
  }
maxProperties = no debe contener más de {$limit} {$limit ->
  [one] propiedad
  *[other] propiedades
  }
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = no debe contener menos de {$limit} {$limit ->
  [one] elemento
  *[other] elementos
  }
minLength = no debe contener menos de {$limit} {$limit ->
  [one] caracter
  *[other] caracteres
  }
minProperties = no debe contener menos de {$limit} {$limit ->
  [one] propiedad
  *[other] propiedades
  }
multipleOf = debe ser múltiplo de {$multipleOf}
not = no debe ser válido según el esquema en "not"
oneOf = debe coincidir con un solo esquema en "oneOf"
pattern = debe coincidir con el patron "{$pattern}"
patternRequired = la propiedad debe coincidir con el patrón "{$missingPattern}"

propertyNames = la propiedad no és válida
required = debe tener la propiedad requerida {$missingProperty}
type = debe ser {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}
unevaluatedItems = must not have more than {$len} {$len ->
  [one] item
  *[other] items
}
unevaluatedProperties = must not have unevaluated properties
uniqueItems = no debe contener elementos duplicados, (los elementos ## {$j} y {$i} son idénticos)

# jtd
discriminator = {$error -> 
    [tag] tag "{$tag}" must be string
    [mapping] value of tag "{$tag}" must be in mapping
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] no debe tener propiedades adicionales
    [missing] debe tener la propiedad requerida {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = debe coincidir con algún esquema en "union"
