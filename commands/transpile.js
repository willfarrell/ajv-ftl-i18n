// Copyright 2026 will Farrell, and ajv-ftl-i18n contributors.
// SPDX-License-Identifier: MIT
import { readFile, stat, writeFile } from "node:fs/promises";
import transpile from "../transpile.js";

const fileExists = async (filepath) => {
	const stats = await stat(filepath);
	if (!stats.isFile()) {
		throw new Error(`${filepath} is not a file`);
	}
};

// fluent-transpiler attaches the Fluent parser annotations on `cause.data`.
const formatError = (error) => {
	const { data } = error.cause ?? {};
	const annotations = data?.annotations ?? [];
	return [
		error.message,
		...annotations.map(
			(a) => `[${a.code}] ${a.message} (offset ${a.span.start})`,
		),
	].join("\n");
};

export default async (input, options, command) => {
	try {
		await fileExists(input);
		const ftl = await readFile(input, { encoding: "utf8" });
		const js = transpile(ftl, options);
		if (options.output) {
			await writeFile(options.output, js);
		} else {
			console.log(js);
		}
		return js;
	} catch (error) {
		command.error(formatError(error));
	}
};
