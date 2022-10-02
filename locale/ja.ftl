-default-message = "{$keyword}" キーワード検証に合格する必要があります
-comparison-limit = {$comparison} {$limit}でなければいけない

items = は{$limit}以上あってはいけない
additionalItems = {items}
additionalProperties = 追加してはいけない
anyOf = "anyOf"のスキーマとマッチしなくてはいけない
const = 定数に等しくなければなりません
contains = 有効なアイテムが含まれている必要があります
dependencies = {$property}がある場合、は{$deps}をつけなければいけない
dependentRequired = {dependencies}
enum = 事前に定義された値のいずれかに等しくなければいけない
falseSchema = ブールスキーマが偽です
format = "{$format}"形式に揃えなければいけない
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = "{$failingKeyword}" スキーマと一致する必要があります
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
patternRequired = プロパティ マッチング パターン "{$missingPattern}" が必要です
propertyNames = プロパティ名が無効です
required = 必要なプロパティ{$missingProperty}がなければいけない
type = {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}でなければいけない
unevaluatedItems = は{$len}個以上であってはいけない
unevaluatedProperties = 未評価のプロパティを含めることはできません
uniqueItems = 重複するアイテムがあってはいけない（{$j}と{$i}は同じである）

# jtd
discriminator = {$error -> 
    [tag] タグ "{$tag}" は文字列でなければなりません
    [mapping] タグ "{$tag}" の値はマッピング内にある必要があります
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
