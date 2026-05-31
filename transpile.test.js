import { doesNotMatch, match, strictEqual } from "node:assert";
import test from "node:test";
import transpile from "./transpile.js";

test("transpile: injects the ajv exportDefault helper", () => {
	const js = transpile("foo = Bar baz\n");
	// custom exportDefault wires in the JSON pointer regexes and __exports lookup
	match(
		js,
		/regExpJsonPointerPairs/,
		"should include the custom export default",
	);
	match(js, /__exports/, "should reference the exports map");
	// not the library's stock `(id, params)` default export
	doesNotMatch(
		js,
		/\*\*\* '\+id\+' \*\*\*/,
		"should not use the default export",
	);
});

test("transpile: strips comments by default (comments: false)", () => {
	const js = transpile("# Standalone comment\n\nfoo = Bar baz\n");
	doesNotMatch(js, /Standalone comment/, "comments should be omitted");
});

test("transpile: caller options override defaults", () => {
	const js = transpile("# Standalone comment\n\nfoo = Bar baz\n", {
		comments: true,
	});
	match(js, /\/\/ # Standalone comment/, "comments: true should be honoured");
});

test("transpile: restores console.error after running", () => {
	const original = console.error;
	transpile("foo = Bar baz\n");
	strictEqual(console.error, original, "console.error must be restored");
});
