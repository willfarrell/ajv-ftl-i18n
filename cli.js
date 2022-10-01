#!/usr/bin/env node

import { Command, Option } from 'commander'
import transpile from './commands/transpile.js'

const program = new Command()
  .name('ajv-ftl')
  .description('Transpile Fluent (.ftl) files to JavaScript (.js or .mjs) for ajv')
  //.version(package.version)

program
  .command('transpile', {isDefault:true})
  .argument('<input>', 'Path to the Fluent file to transpile')
  .requiredOption('--locale <locale...>', 'What locale(s) to be used. Multiple can be set to allow for fallback. i.e. en-CA')
  .addOption(new Option('-o, --output <output>', 'Path to store the resulting JavaScript file. Will be in ESM.'))
  .action(transpile)
	
program
  .parse()

