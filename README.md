# ajv-ftl-i18n

Internationalized error messages for Ajv - superfast JSON validator for JSON Schema and JSON Type Definition.
A drop in replacement for [`ajv-i18n`](https://ajv.js.org/packages/ajv-i18n.html) with some extra features.

## Features

- Based off of Fluent (`.ftl`)
- Allows overriding messages
- Supports multi-lingual errorMessages
- Supports English (`en`), Arabic (`ar`), Catalan (`ca`), Czech (`cs`), German (`de`), Spanish (`es`), Finnish (`fi`), French (`fr`), Hungarian (`hu`), Indonesian (`id`), Italian (`it`), Japanese (`ja`), Korean (`ko`), Norwegian bokmål (`nb`), Dutch (`nl`), Polish (`pl`), Português - Brasil (`pt-BR`), Russian (`ru`), Slovak (`sk`), Swedish (`sv`), Thai (`th`), Chinese (`zh`), Chinese - Taiwan (`zh-TW`). PR to correct or add new locales welcome.

### AJV Differences

- `ar` will return Arabic numerals, based on locale
- `en` uses lower case `NOT`
- `fr` uses `«`,`»` instead of `"`
- Fixed quote/space inconsistencies between locales
- Added in computer translation when missing
- Merged schema and jtd together

## Install

```bash
npm i -D ajv-ftl-i18n
```

## Usage

```javascript
import _ajv from 'ajv/dist/2020.js'
import localize from 'ajv-ftl-i18n'
import errorMessage from 'ajv-errors'

const Ajv = _ajv.default // esm workaround

const ajv = Ajv({
  allErrors: true,
  messages: true // must be `true` for `errorMessages` support
})
errorMessage(ajv)
const validate = ajv.compile(schema)
const valid = validate(data)

if (!valid) {
  localize.fr(validate.errors)
  // string with all errors and data paths
  console.log(ajv.errorsText(validate.errors, { separator: '\n' }))
}
```

## Transpile

Used to transpile custom ftl files into ajv localizations.

### CLI

```bash
Usage: ajv-ftl [options] <input>

Transpile Fluent (.ftl) files to JavaScript (.js or .mjs) for ajv

Arguments:
  input                  Path to the Fluent file to compile

Options:
  --locale <locale...>   What locale(s) to be used. Multiple can be set to allow for fallback. i.e. en-CA
  -o, --output <output>  Path to store the resulting JavaScript file. Will be in ESM.
  -h, --help             display help for command
```

### NodeJS

```javascript
import { readFile, writeFile } from 'node:fs/promises'
import { transpile } from 'ajv-ftl-i18n'

const ftl = await readFile('./path/to/en.ftl', { encoding: 'utf8' })
const js = transpile(ftl, { locale: 'en-CA' })
await writeFile('./path/to/en.mjs', js, 'utf8')
```

## errorMessage

All functionality of [`ajv-errors`](https://ajv.js.org/packages/ajv-errors.html) are supported. To not introduce new complexity to the errorMessage structure, you'll need to pull your errorMessages into a centralized ftl file for the schema.

```
${messageId}[, ${key}:${jsonPointer}][...]
```

### Replace with message identifier in Fluent file

**schema.ftl**

```ftl
...
dimensions = The dimensions are invalid
```

**schema.json**

```json
{
  "type": "object",
  "properties": {
    "height": {
      "type": "number",
      "minimum": 4
    },
    "width": {
      "type": "number",
      "minimum": 4
    }
  },
  "errorMessage": "dimensions"
}
```

### Use JSON-pointers

**schema.ftl**

```ftl
...
dimensions = The dimensions ({$h}x{$w}) are invalid
```

**schema.json**

```json
{
  "type": "object",
  "properties": {
    "height": {
      "type": "number",
      "minimum": 4
    },
    "width": {
      "type": "number",
      "minimum": 4
    }
  },
  "errorMessage": {
    "properties": {
      "height": "dimensions, h:${/height}, w:${/width}"
    }
  }
}
```
