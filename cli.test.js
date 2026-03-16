import { match, ok, strictEqual } from "node:assert";
import { execFile } from "node:child_process";
import { readFile, unlink } from "node:fs/promises";
import test from "node:test";
import { promisify } from "node:util";

const execFileAsync = promisify(execFile);
const cli = "./cli.js";

test("cli: transpile to stdout", async () => {
	const { stdout } = await execFileAsync("node", [
		cli,
		"locale/en.ftl",
		"--locale",
		"en",
	]);
	ok(stdout.length > 0, "should produce output");
	match(stdout, /export/, "should contain an export");
});

test("cli: transpile to file", async () => {
	const output = "/tmp/ajv-ftl-test-output.js";
	await execFileAsync("node", [
		cli,
		"locale/en.ftl",
		"--locale",
		"en",
		"-o",
		output,
	]);
	const content = await readFile(output, "utf8");
	ok(content.length > 0, "output file should have content");
	match(content, /export/, "output file should contain an export");
	await unlink(output);
});

test("cli: missing --locale should error", async () => {
	try {
		await execFileAsync("node", [cli, "locale/en.ftl"]);
		ok(false, "should have thrown");
	} catch (e) {
		ok(e.status !== 0 || e.stderr.length > 0, "should exit with error");
	}
});

test("cli: missing input file should error", async () => {
	try {
		await execFileAsync("node", [cli, "nonexistent.ftl", "--locale", "en"]);
		ok(false, "should have thrown");
	} catch (e) {
		ok(e.status !== 0 || e.stderr.length > 0, "should exit with error");
	}
});

test("cli: --help", async () => {
	const { stdout } = await execFileAsync("node", [cli, "--help"]);
	match(stdout, /transpile/i, "help should mention transpile");
});
