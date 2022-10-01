-default-message = harus lulus validasi kata kunci "{$keyword}"
-comparison-limit = harus {$comparison} {$limit}

items = tidak boleh memiliki lebih dari {$limit} item
additionalItems = {items}
additionalProperties = tidak boleh memiliki properti tambahan
anyOf = harus cocok dengan beberapa skema pada "anyOf"
const = harus sama dengan konstan
contains = harus berisi item yang valid
dependencies = harus memiliki properti {$deps} ketika properti {$property} hadir
dependentRequired = {dependencies}
enum = harus sama dengan salah satu dari nilai yang telah ditentukan
falseSchema = skema boolean salah
format = harus cocok dengan format "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = harus cocok dengan skema "{$failingKeyword}"
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = tidak boleh memiliki lebih dari {$limit} item
maxLength = tidak boleh lebih dari {$limit} karakter
maxProperties =  tidak boleh memiliki lebih dari {$limit} properti
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = tidak boleh kurang dari {$limit} item
minLength = tidak boleh lebih pendek dari {$limit} karakter
minProperties = tidak boleh kurang dari {$limit} properti
multipleOf = harus merupakan kelipatan dari {$multipleOf}
not = tidak boleh valid sesuai dengan skema pada "not"
oneOf = harus sama persis dengan satu skema pada "oneOf"
pattern = harus cocok dengan pola "{$pattern}"
patternRequired = harus memiliki pola pencocokan properti "{$missingPattern}"

propertyNames = nama properti tidak valid
required = harus memiliki properti {$missingProperty}
type = harus berupa {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}
unevaluatedItems = must not have more than {$len} {$len ->
  [one] item
  *[other] items
}
unevaluatedProperties = must not have unevaluated properties
uniqueItems = tidak boleh memiliki item duplikat (item ## {$j} dan {$i} identik)

# jtd
discriminator = {$error -> 
    [tag] tag "{$tag}" must be string
    [mapping] value of tag "{$tag}" must be in mapping
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] tidak boleh memiliki properti tambahan
    [missing] harus memiliki properti {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = harus cocok dengan beberapa skema pada "union"
