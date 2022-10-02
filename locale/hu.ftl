-default-message = át kell adnia a "{$keyword}" kulcsszóérvényesítést
-comparison-limit = kell legyen {$comparison} {$limit}

items = nem lehet több, mint {$limit} eleme
additionalItems = {items}
additionalProperties = nem lehetnek további elemei
anyOf = meg kell feleljen legalább egy "anyOf" alaknak
const = állandóval egyenlőnek kell lennie
contains = érvényes tételt kell tartalmaznia
dependencies = -nak kell {$depsCount -> 
    [one] legyen
    *[other] legyenek
  } a következő {$depsCount -> 
    [one] tulajdonsága
    *[other] tulajdonságai
  }: {$deps}, ha van {$property} tulajdonsága
dependentRequired = {dependencies}
enum = egyenlő kell legyen valamely előre meghatározott értékkel
falseSchema = a logikai séma hamis
format = meg kell feleljen a következő formátumnak: "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = meg kell egyeznie a "{$failingKeyword}" sémával
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = nem lehet több, mint {$limit} eleme
maxLength = nem lehet hosszabb, mint {$limit} szimbólum
maxProperties = nem lehet több, mint {$limit} tulajdonsága
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = nem lehet kevesebb, mint {$limit} eleme
minLength = nem lehet rövidebb, mint {$limit} szimbólum
minProperties = nem lehet kevesebb, mint {$limit} tulajdonsága
multipleOf = a többszöröse kell legyen a következő számnak: {$multipleOf}
not = nem lehet érvényes a "not" alaknak megfelelően
oneOf = meg kell feleljen pontosan egy "oneOf" alaknak
pattern = meg kell feleljen a következő mintának: "{$pattern}"
patternRequired = tulajdonságmegfeleltetési mintával kell rendelkeznie: "{$missingPattern}"
propertyNames = tulajdonság neve érvénytelen
required = kell legyen {$missingProperty} tulajdonsága
type = {$type}{$nullable -> 
  [true] /null
  *[default] {""}
} kell legyen
unevaluatedItems = nem lehet több, mint {$len} eleme
unevaluatedProperties = nem rendelkezhetnek értéktelen tulajdonságokkal
uniqueItems = nem lehetnek azonos elemei ({$j} és {$i} elemek azonosak)

# jtd
discriminator = {$error -> 
    [tag] címke "{$tag}" karakterláncnak kell lennie
    [mapping] a "{$tag}" címke értékének leképezésben kell lennie
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] nem lehetnek további elemei
    [missing] kell legyen {$missingProperty} tulajdonsága
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = meg kell feleljen legalább egy "union" alaknak
