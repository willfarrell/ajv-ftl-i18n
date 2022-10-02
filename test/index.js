import test from 'node:test'
import { deepEqual, notDeepEqual,notEqual } from 'node:assert'
import {readFile,writeFile} from 'node:fs/promises'
import ftlLocalize from '../index.js'

import _ajv from 'ajv/dist/2020.js'
import formats from 'ajv-formats'
import errors from 'ajv-errors'

const Ajv = _ajv.default // esm workaround for linting


// ajv
const ajv = new Ajv({
  allErrors:true,
  messages: true, // must be true for errorMessages
  //uriResolver,
  keywords: [
    
  ]})
formats(ajv)
errors(ajv)

const schema = JSON.parse(await readFile(`./test/files/schema.json`, {encoding:'utf8'}))
const data = JSON.parse(await readFile(`./test/files/schema-data.json`, {encoding:'utf8'}))
const validate = ajv.compile(schema)
validate(data)
ajv.removeSchema()


// process
const locales = Object.keys(ftlLocalize).filter(key => key !== 'transpile')
const ajvErrors = {}
const ftlErrors = {}
for(const locale of locales) {
  ftlErrors[locale] = JSON.parse(JSON.stringify(validate.errors))
  ftlLocalize[locale](ftlErrors[locale])
}

// tests
const counts = {}
for (let i = 0, l = validate.errors.length; i < l; i++) {
  const keyword = validate.errors[i].keyword
  
  if (counts[keyword]) continue
  
  for(const locale of locales) {
    test(`Should translate "${i}-${keyword}" (${locale})`, async (t) => {
      if (locale !== 'en') {
        notDeepEqual(ftlErrors[locale][i].message, ftlErrors['en'][i].message)
      }
    })
  }
  
  counts[keyword] ??= true
}
//console.log(counts)

// errorMessages
test(`Should translate errorMessage`, async (t) => {
  const schema = {
    type: "object",
    required: ["foo"],
    properties: {
      foo: {type: "integer"},
    },
    additionalProperties: false,
    errorMessage: "anyOf",
  }
  const validate = ajv.compile(schema)
  validate({})
  ajv.removeSchema()
  ftlLocalize.en(validate.errors)
  deepEqual(validate.errors[0].message, 'must match a schema in "anyOf"')
})

test(`Should translate errorMessage with templates`, async (t) => {
  const schema = {
    type: "object",
    properties: {
      height: {
        type: "number",
        minimum: 4,
      },
      width: {
        type: "number",
        minimum: 4,
      },
    },
    errorMessage: {
      properties: {
        height: "uniqueItems, j:${/height}, i:${/width}",
      },
    },
  }
  const validate = ajv.compile(schema)
  validate({'height':2, 'width':4})
  ajv.removeSchema()
  ftlLocalize.en(validate.errors)
  deepEqual(validate.errors[0].message, 'must not have duplicate items (items ## 2 and 4 are identical)')
})
