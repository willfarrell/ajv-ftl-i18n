-default-message = "{$keyword}"키워드 검사를 통과해야 합니다
-comparison-limit = {$comparison} {$limit} 이여야 합니다

items = 항목은 아이템을 {$limit}개 이상 가질 수 없습니다
additionalItems = {items}
additionalProperties = 추가적인 속성은 허용되지 않습니다
anyOf = "anyOf"의 스키마와 일치해야 합니다
const = 상수와 같아야합니다
contains = 올바른 아이템을 포함해야 합니다
dependencies = {$property}속성이 있는 경우, {$deps} 속성이 있어야합니다
dependentRequired = {dependencies}
enum = 미리 정의된 값중 하나여야 합니다
falseSchema = boolean 스키마는 올바르지 않습니다
format = "{$format}" 포맷과 일치해야 합니다
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = "{$failingKeyword}" 스키마와 일치해야 합니다
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = 아이템이 최대 {$limit}개이여야 합니다
maxLength = 최대 {$limit}글자여야 합니다
maxProperties = 속성은 최대 {$limit}개 이내여야 합니다
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = 아이템이 최소 {$limit}개이여야 합니다
minLength = 최소 {$limit}글자여야 합니다
minProperties = 속성은 최소 {$limit}개 이상이여야 합니다
multipleOf = {$multipleOf}의 배수여야 합니다
not = "not"스키마에 따라 유효하지 않아야 합니다
oneOf = "oneOf" 스키마중 하나와 정확하게 일치해야 합니다
pattern = "{$pattern}"패턴과 일치해야 합니다
patternRequired = "{$missingPattern}"패턴과 일치하는 속성을 가져야 합니다

propertyNames = 속성명이 올바르지 않습니다
required = {$missingProperty} 속성은 필수입니다
type = {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}이여야 합니다
unevaluatedItems = 항목이 {$len}개 아이템을 초과하면 안됩니다
unevaluatedProperties = 평가되지 않은 속성이 없어야합니다.
uniqueItems = 중복 아이템이 없어야 합니다 (아이템{$j}과 아이템{$i}가 동일합니다)

# jtd
discriminator = {$error -> 
    [tag] "{$tag}"태그는 반드시 문자열이여야 합니다
    [mapping]  "{$tag}"태그의 값은 반드시 oneOf에 있어야 합니다
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] 추가적인 속성은 허용되지 않습니다
    [missing] {$missingProperty} 속성은 필수입니다
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = "union"의 스키마와 일치해야 합니다
