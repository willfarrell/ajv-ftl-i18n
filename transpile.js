import fluentTranspile from 'fluent-transpiler'

const exportDefault = `(errors) => {
  if (!errors?.length) return
  for (const e of errors) {
    let { keyword } = e
    if (keyword === 'false schema') keyword = 'falseSchema'
    let source = __exports[keyword] ?? __exports['_'+keyword]
    let values = {}
    if (keyword === 'errorMessage') {
      const [message, ...valuesPairs] = e.message.split(', ')
      valuesPairs.forEach(pair => {
        const [key, value] = pair.split(':')
        values[key] = value
      })
      source ??= __exports[message] ?? __exports['_'+message] ?? e.message
    } else {
      source ??= __exports.defaultMessage
    }
    if (typeof source === 'function') {
      e.message = source({keyword:e.keyword, ...e.params, ...values})
    } else {
      e.message = source
    }
  }
}
`

export default (ftl, options) =>
  fluentTranspile(ftl, {
    comments: false,
    ...options,
    exportDefault
  })
