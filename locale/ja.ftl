-default-message = must pass "{$keyword}" keyword validation
-comparison-limit = {$comparison} {$limit}でなければいけない

items = は{$limit}以上あってはいけない
additionalItems = {items}
additionalProperties = 追加してはいけない
anyOf = "anyOf"のスキーマとマッチしなくてはいけない
const = must be equal to constant
contains = must contain a valid item
dependencies = {$property}がある場合、は{$deps}をつけなければいけない
dependentRequired = {dependencies}
enum = 事前に定義された値のいずれかに等しくなければいけない
falseSchema = boolean schema is false
format = "{$format}"形式に揃えなければいけない
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = must match "{$failingKeyword}" schema
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = は{$limit}個以上であってはいけない
maxLength = は{$limit}文字以上であってはいけない
maxProperties = は{$limit}個以上のプロパティを有してはいけない
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = は{$limit}個以下であってはいけない
minLength = は{$limit}文字以下であってはいけない
minProperties = は{$limit}個以下のプロパティを有してはいけない
multipleOf = {$multipleOf}の倍数でなければいけない
not = "not"のスキーマに従って有効としてはいけない
oneOf = "oneOf"のスキーマと完全に一致しなくてはいけない
pattern = "{$pattern}"のパターンと一致しなければいけない
patternRequired = must have property matching pattern "{$missingPattern}"

propertyNames = property name is invalid
required = 必要なプロパティ{$missingProperty}がなければいけない
type = {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}でなければいけない
unevaluatedItems = must NOT have more than {$len} {$len ->
  [one] item
  *[other] items
}
unevaluatedProperties = must NOT have unevaluated properties
uniqueItems = 重複するアイテムがあってはいけない（{$j}と{$i}は同じである）

# jtd
discriminator = {$error -> 
    [tag] tag "{$tag}" must be string
    [mapping] value of tag "{$tag}" must be in mapping
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] 追加してはいけない"
    [missing] 必要なプロパティ{$missingProperty}がなければいけない
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = "union"のスキーマとマッチしなくてはいけない
