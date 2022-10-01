-default-message = 'должно соответствовать правилу "{$keyword}"
-comparison-limit = должно быть {$comparison} {$limit}

items = должно иметь не более, чем {$limit} {$limit ->
  [one] элемент
  [few] элементa
  *[other] элементов
  }
additionalItems = {items}
additionalProperties = не должно иметь дополнительных полей
anyOf = должно соответствовать одной их схем в "anyOf"
const = должно быть равно заданному значению
contains = должно содержать значение соответствующее схеме
dependencies = должно иметь {$depsCount -> 
    [one] поле
    *[other] поля
  } {$deps}, когда присутствует поле {$property}
dependentRequired = {dependencies}
enum = должно быть равно одному из разрешенных значений
falseSchema = схема равна false
format = должно соответствовать формату "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = должно соответствовать схемe "{$failingKeyword}"
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = должно иметь не более, чем {$limit} {$limit ->
  [one] элемент
  [few] элементa
  *[other] элементов
  }
maxLength = должно быть не длиннее, чем {$limit} {$limit ->
  [one] символ
  [few] символa
  *[other] символов
  }
maxProperties = должно иметь не более, чем {$limit} {$limit ->
  [one] поле
  [few] поля
  *[other] полей
  }
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = должно иметь не менее, чем {$limit} {$limit ->
  [one] элемент
  [few] элементa
  *[other] элементов
  }
minLength = должно быть не короче, чем {$limit} {$limit ->
  [one] символ
  [few] символa
  *[other] символов
  }
minProperties = должно иметь не менее, чем {$limit} {$limit ->
  [one] поле
  [few] поля
  *[other] полей
  }
multipleOf = должно быть кратным {$multipleOf}
not = должно не соответствовать схеме в "not"
oneOf = должно соответствовать в точности одной схемe в "oneOf"
pattern = должно соответствовать образцу "{$pattern}"
patternRequired = должно иметь поле, соответствующее образцу "{$missingPattern}"
propertyNames = имя поля не соответствует схеме
required = должно иметь обязательное поле {$missingProperty}
type = должно быть {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}
unevaluatedItems = должно иметь не более, чем {$len} {$len ->
  [one] элемент
  [few] элементa
  *[other] элементов
}
unevaluatedProperties = не должно иметь непроверенных полей
uniqueItems = не должно иметь повторяющихся элементов (элементы {$j} и {$i} идентичны)

# jtd
discriminator = {$error -> 
    [tag] поле "{$tag}" должно быть строкой
    [mapping] значение поля "{$tag}" должно быть ключом одной из схем
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] не должно иметь дополнительных полей
    [missing] должно иметь обязательное поле {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = должно соответствовать одной их схем в "union"
