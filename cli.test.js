// Copyright 2026 will Farrell, and ajv-ftl-i18n contributors.
// SPDX-License-Identifier: MIT
import { match, ok, rejects } from "node:assert";
import { mkdtemp, readFile, rm } from "node:fs/promises";
import { tmpdir } from "node:os";
import { join } from "node:path";
import test from "node:test";
import { createProgram } from "./program.js";

// Build the CLI program for in-process testing: make commander throw instead of
// calling process.exit, and silence its own stdout/stderr writes.
const buildProgram = () => {
	const program = createProgram();
	const silence = (cmd) => {
		cmd.exitOverride();
		cmd.configureOutput({ writeOut() {}, writeErr() {} });
	};
	silence(program);
	for (const cmd of program.commands) silence(cmd);
	return program;
};

const run = (args) => buildProgram().parseAsync(["node", "ajv-ftl", ...args]);

// Capture console.log output produced while fn() runs.
const captureLog = async (fn) => {
	const original = console.log;
	let out = "";
	console.log = (...parts) => {
		out += `${parts.join(" ")}\n`;
	};
	try {
		await fn();
	} finally {
		console.log = original;
	}
	return out;
};

test("cli: transpile to stdout (implicit default command)", async () => {
	const out = await captureLog(() => run(["locale/en.ftl", "--locale", "en"]));
	ok(out.length > 0, "should produce output");
	match(out, /export/, "should contain an export");
});

test("cli: transpile via explicit `transpile` subcommand", async () => {
	const out = await captureLog(() =>
		run(["transpile", "locale/en.ftl", "--locale", "en"]),
	);
	match(out, /export/, "explicit subcommand should transpile");
});

test("cli: transpile to file via --output", async () => {
	const dir = await mkdtemp(join(tmpdir(), "ajv-ftl-"));
	const output = join(dir, "en.js");
	try {
		await run(["locale/en.ftl", "--locale", "en", "-o", output]);
		const content = await readFile(output, "utf8");
		ok(content.length > 0, "output file should have content");
		match(content, /export/, "output file should contain an export");
	} finally {
		await rm(dir, { recursive: true, force: true });
	}
});

test("cli: missing --locale should error", async () => {
	await rejects(
		run(["locale/en.ftl"]),
		/locale/i,
		"should report the missing required option",
	);
});

test("cli: missing required <input> argument should error", async () => {
	await rejects(
		run(["--locale", "en"]),
		/missing required argument 'input'/i,
		"should report the missing input argument by name",
	);
});

test("cli: missing input file should error", async () => {
	await rejects(run(["nonexistent.ftl", "--locale", "en"]));
});

test("cli: directory as input should error", async () => {
	await rejects(run(["locale", "--locale", "en"]), /is not a file/);
});

test("cli: --help lists program name, description, and command", async () => {
	const help = buildProgram().helpInformation();
	match(help, /ajv-ftl/, "help should show the program name");
	match(help, /Transpile Fluent/, "help should show the program description");
	match(help, /transpile/, "help should list the transpile command");
});

test("cli: transpile --help lists argument and option descriptions", async () => {
	const transpileCmd = buildProgram().commands[0];
	const help = transpileCmd.helpInformation();
	match(help, /Path to the Fluent file to transpile/, "argument description");
	match(help, /What locale\(s\) to be used/, "locale option description");
	match(
		help,
		/Path to store the resulting JavaScript file/,
		"output option description",
	);
});
