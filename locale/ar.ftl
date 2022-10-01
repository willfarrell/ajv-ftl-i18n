-default-message = يجب أن تمرر كلمة التحقق المفتاحية "{$keyword}"
-comparison-limit =  يجب أن يكون {$comparison} {$limit}

items =  يجب أن لا يحوي أكثر من {$limit} عنصر
additionalItems = {items}
additionalProperties = يجب أن لا يحوي خصائص إضافية
anyOf = يجب أن يوافق أحد المخططات الموجودة في "anyOf"
const = يجب أن يكون ثابتاً
contains = يجب أن يحوي عنصرا صحيح
dependencies =  يجب أن يحوي الخصائص {$deps} عندما تكون الخاصية {$property} موجودة
dependentRequired = {dependencies}
enum = قيمة هذا الحقل يجب أن تكون مساوية لأحد القيم المعرفة مسبقاً
falseSchema = المخطط المنطقي غير صحيح
format = يجب أن يوافق الصيغة "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = يجب أن توافق المخطط "{$failingKeyword}"
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems =  يجب أن لا يحوي أكثر من {$limit} عنصر
maxLength =  يجب أن لا يحوي أكثر من {$limit} محرف
maxProperties =  يجب أن لا يحوي أكثر من {$limit} خصائص
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems =  يجب أن لا يحوي أقل من {$limit} عنصر
minLength =  يجب أن لا يحوي أقل من {$limit} محرف
minProperties =  يجب أن لا يحوي أقل من {$limit} خصائص
multipleOf =  يجب أن يحوي أكثر من {$multipleOf}
not = يجب أن يكون غير صحيح وفقاً للمخطط "not"
oneOf = يجب أن يوافق مخطط واحد فقط موجود في "oneOf"
pattern = يجب أن يوافق النمط "{$pattern}"
patternRequired = يجب أن يحوي خاصية توافق النمط "{$missingPattern}"

propertyNames = اسم الخاصية غير صالح
required = هذا الحقل إلزامي
type = قيمة هذا الحقل غير صالحة
unevaluatedItems = must NOT have more than {$len} {$len ->
  [one] item
  *[other] items
}
unevaluatedProperties = must NOT have unevaluated properties
uniqueItems = يجب أن لا يحوي عناصر مكررة (العنصر ## {$j} و {$i} متطابقة)

# jtd
discriminator = {$error -> 
    [tag] tag "{$tag}" must be string
    [mapping] value of tag "{$tag}" must be in mapping
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] must NOT have additional properties
    [missing] must have property {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = must match a schema in "union"
