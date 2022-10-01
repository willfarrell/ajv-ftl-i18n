-default-message = 應該通過 "{$keyword}" 關鍵詞檢驗
-comparison-limit-format = 應該是 {$comparison} {$limit}
-comparison-limit = 應該要 {$comparison} {$limit}

items = 不可以超過{$limit}個元素
additionalItems = {items}
additionalProperties = 不可以有額外的屬性
anyOf = 不符合 "anyOf" 指定的模式
const = 應該等於常數
contains = 應該包含一個有效元素
dependencies = 應該要有屬性{$property}的依賴屬性{$deps}
dependentRequired = {dependencies}
enum = 應該要在預設的值之中
falseSchema = 布林模式不正確
format = 應該要符合 "{$format}" 格式
formatMaximum = {-comparison-limit-format}
formatExclusiveMaximum = {-comparison-limit-format}
formatMinimum = {-comparison-limit-format}
formatExclusiveMinimum = {-comparison-limit-format}
if = 應該符合 "{$failingKeyword}" schema
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = 不應該多於 {$limit} 個
maxLength = 不應該多於 {$limit} 個字元
maxProperties = 不應該多於 {$limit} 個屬性
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = 不應該少於 {$limit} 個
minLength = 不應該少於 {$limit} 個字元
minProperties = 不應該少於 {$limit} 個屬性
multipleOf = 應該是 {$multipleOf} 的整數倍
not = 不應該符合 "not" schema
oneOf = 只能符合一個 "oneOf" 中的 schema
pattern = 應該符合模式 "{$pattern}"
patternRequired = 應該有屬性對應模式 "{$missingPattern}"

propertyNames = 属性名 無效
required = 應該有必須屬性 {$missingProperty}
type = 應該是 {$type}{$nullable -> 
  [true] /null
  *[default] {""}
} 類型
unevaluatedItems = 的元素不可以超過 {$len} 個
unevaluatedProperties = 不應該有未驗證的屬性
uniqueItems = 不應該有重複項目 (第 {$j} 項和第 {$i} 項是重複的)

# jtd
discriminator = {$error -> 
    [tag] 標籤 "{$tag}" 的類型必須是字串
    [mapping] 標籤 "{$tag}" 必須在 mapping 其中之一
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] 不可以有額外的屬性
    [missing] 應該有必須屬性 {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = 不符合 union 指定的模式
