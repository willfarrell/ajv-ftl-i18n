#!/usr/bin/env node

import { stat, readFile, writeFile } from 'node:fs/promises'
import { Command, Option } from 'commander'
import transpile from './transpile.js'

const fileExists = async (filepath) => {
	const stats = await stat(filepath)
	if (!stats.isFile()) {
	  throw new Error(`${filepath} is not a file`)
	}
}

new Command()
  .name('ajv-ftl')
  .description('Compile Fluent (.ftl) files to JavaScript (.js or .mjs) for ajv')
  //.version(package.version)
  .argument('<input>', 'Path to the Fluent file to compile')
  .requiredOption('--locale <locale...>', 'What locale(s) to be used. Multiple can be set to allow for fallback. i.e. en-CA')
  .addOption(new Option('-o, --output <output>', 'Path to store the resulting JavaScript file. Will be in ESM.'))
  .action(async (input, options) => {
	  await fileExists(input)
	  
	  const ftl = await readFile(input, {encoding:'utf8'})
	  
	  const js = transpile(ftl, options)
	  if (options.output) {
		  await writeFile(options.output, js, 'utf8')
	  } else {
		  console.log(js)
	  }
  })
  .parse()

