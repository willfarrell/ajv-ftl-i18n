-default-message = ต้องผ่านคีย์เวิร์ด "{$keyword}"
-comparison-limit = ต้อง {$comparison} {$limit}

items = ต้องมีสมาชิกไม่เกิน {$limit} ตัว
additionalItems = {items}
additionalProperties = ต้องไม่มี property อื่นๆ นอกเหนีอจากที่กำหนดไว้
anyOf = ต้องตรงกับหนึ่งใน schema ที่กำหนดไว้ใน "anyOf"
const = ต้องเท่ากับค่าคงที่
contains = ต้องมีสมาชิกที่ผ่านเงื่อนไขอยู่
dependencies = เมื่อมี property {$property} แล้วจะต้องมี property {$deps} ด้วย
dependentRequired = {dependencies}
enum = ต้องตรงกับหนึ่งในค่าที่กำหนดไว้
falseSchema = schema เป็น false
format = ต้องเป็นรูปแบบ "{$format}"
formatMaximum = {-comparison-limit}
formatExclusiveMaximum = {-comparison-limit}
formatMinimum = {-comparison-limit}
formatExclusiveMinimum = {-comparison-limit}
if = ต้องตรงกับ schema "{$failingKeyword}"
maximum = {-comparison-limit}
exclusiveMaximum = {maximum}
maxItems = ต้องมีสมาชิกไม่เกิน {$limit}
maxLength = ต้องยาวไม่เกิน {$limit} ตัวอักษร
maxProperties = ต้องมี property ไม่เกิน {$limit} ตัว
minimum = {-comparison-limit}
exclusiveMinimum = {minimum}
minItems =ควรมีสมาชิกไม่น้อยกว่า {$limit}
minLength = ต้องมีอย่างน้อย {$limit} ตัวอักษร
minProperties = ต้องมี property อย่างน้อย {$limit} ตัว
multipleOf = ต้องเป็นเลขที่หาร {$multipleOf} ลงตัว
not = ต้องไม่ผ่าน schema ที่กำหนดไว้ใน "not"
oneOf = ต้องตรงกับ schema ตัวเดียวใน "oneOf" เท่านั้น
pattern = ต้องตรงตาม pattern "{$pattern}"
patternRequired = ต้องมี property ที่มีชื่อตรงตาม pattern "{$missingPattern}"
propertyNames = ชื่อ property ไม่ถูกต้อง
required = ต้องมี property {$missingProperty} ด้วย
type = ต้องเป็น {$type}{$nullable -> 
  [true] /null
  *[default] {""}
}
unevaluatedItems = ต้องมีไม่เกิน {$len} ตัว
unevaluatedProperties = ต้องไม่มี property ที่ยังไม่ได้ผ่านการตรวจสอบเงื่อนไขใดๆ
uniqueItems = ต้องมีสมาชิกไม่ซ้ำักัน (ลำดับที่ {$j} กับ {$i} ซ้ำกัน)

# jtd
discriminator = {$error -> 
    [tag] tag "{$tag}" ต้องเป็น string
    [mapping] ต้องมีค่าของ tag "{$tag}" ใน mapping
    *[default] {type}
  }
# enum = {enum}
properties = {$error -> 
    [additional] ต้องไม่มี property อื่นๆ นอกเหนีอจากที่กำหนดไว้
    [missing] ต้องมี property {$missingProperty}
    *[default] {type}
  }
# type = {type}
elements = {type}
values = {type}
union = ต้องตรงกับหนึ่งใน schema ที่กำหนดไว้ใน "union"
