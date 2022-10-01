-default-message = deve passar a validação da keyword "{$keyword}"
-comparison-limit = deve ser {$comparison} {$limit}

items = não são permitidos itens adicionais (mais do que {$limit})
additionalItems = {items}
additionalProperties = não são permitidas propriedades adicionais
anyOf = os dados não correspondem a nenhum schema de "anyOf"
const = deve ser igual à constante
contains = deve conter um item válido
dependencies = deve ter {$depsCount -> 
    [one] propriedade
    *[other] propriedades
  } {$deps} quando a propriedade {$property} estiver presente
dependentRequired = {dependencies}
enum = deve ser igual a um dos valores permitidos
falseSchema = o schema booleano é "false"
format = deve corresponder ao formato "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = deve corresponder ao schema "{$failingKeyword}"
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = não deve ter mais que {$limit} {$limit ->
  [one] elemento
  *[other] elementos
  }
maxLength = não deve ser maior que {$limit} {$limit ->
  [one] caracter
  *[other] caracteres
  }
maxProperties = não deve ter mais que {$limit} {$limit ->
  [one] propriedade
  *[other] propriedades
  }
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = não deve ter menos que {$limit} {$limit ->
  [one] elemento
  *[other] elementos
  }
minLength = não deve ser mais curta que {$limit} {$limit ->
  [one] caracter
  *[other] caracteres
  }
minProperties = não deve ter menos que {$limit} {$limit ->
  [one] propriedade
  *[other] propriedades
  }
multipleOf = deve ser múltiplo de {$multipleOf}
not = não deve ser valido segundo o schema em "not"
oneOf = deve corresponder exatamente com um schema em "oneOf"
pattern = deve corresponder ao padrão "{$pattern}"
patternRequired = deve ter a propriedade correspondente ao padrão "{$missingPattern}"
propertyNames = o nome da propriedade é inválido
required = deve ter a propriedade obrigatória {$missingProperty}
type = deve ser {$type -> 
  [number] um número
  [integer] um número inteiro
  [string] um texto
  [boolean] um booleano
  *[default] {$type}
}{$nullable -> 
  [true] /null
  *[default] {""}
}
unevaluatedItems = não pode possuir mais que{$len} {$len ->
  [one] item
  *[other] itens
}
unevaluatedProperties = não pode possuir propridades não avaliadas
uniqueItems = não deve ter itens duplicados (os itens ## {$j} e {$i} são idênticos)

# jtd
discriminator = {$error -> 
    [tag] a tag "{$tag}" deve ser uma string
    [mapping] o valor da tag "{$tag}" deve estar no mapping
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] não deve ter propriedades adicionais
    [missing] deve ter a propriedade obrigatória {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = os dados não correspondem a nenhum schema de "union"
