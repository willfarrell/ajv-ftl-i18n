-default-message = 应当通过 "{$keyword}" 关键词校验
-comparison-limit-format = 应当是 {$comparison} {$limit}
-comparison-limit = 应当为 {$comparison} {$limit}

items = 不允许超过{$limit}个元素
additionalItems = {items}
additionalProperties = 不允许有额外的属性
anyOf = 数据应为 anyOf 所指定的其中一个
const = 应当等于常量
contains = 应当包含一个有效项
dependencies = 应当拥有属性{$property}的依赖属性{$deps}
dependentRequired = {dependencies}
enum = 应当是预设定的枚举值之一
falseSchema = 布尔模式出错
format = 应当匹配格式 "{$format}"
formatMaximum = {-comparison-limit-format}
formatExclusiveMaximum = {-comparison-limit-format}
formatMinimum = {-comparison-limit-format}
formatExclusiveMinimum = {-comparison-limit-format}
if = 应当匹配模式 "{$failingKeyword}"
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = 不应多于 {$limit} 个项
maxLength = 不应多于 {$limit} 个字符
maxProperties = 不应有多于 {$limit} 个属性
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems = 不应少于 {$limit} 个项
minLength = 不应少于 {$limit} 个字符
minProperties = 不应有少于 {$limit} 个属性
multipleOf = 应当是 {$multipleOf} 的整数倍
not = 不应当匹配 "not" schema
oneOf = 只能匹配一个 "oneOf" 中的 schema
pattern = 应当匹配模式 "{$pattern}"
patternRequired = 应当有属性匹配模式 "{$missingPattern}"
propertyNames = 属性名 无效
required = 应当有必需属性 {$missingProperty}
type = 应当是 {$type}{$nullable -> 
  [true] /null
  *[default] {""}
} 类型
unevaluatedItems = 不允许有超过 {$len} 个元素
unevaluatedProperties = 不允许存在未求值的属性
uniqueItems = 不应当含有重复项 (第 {$j} 项与第 {$i} 项是重复的)

# jtd
discriminator = {$error -> 
    [tag] 标签 "{$tag}" 的类型必须为字符串
    [mapping] 标签 "{$tag}" 的值必须在 mapping 之中
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] 不允许有额外的属性
    [missing] 应当有必需属性 {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = 数据应为 union 所指定的其中一个
