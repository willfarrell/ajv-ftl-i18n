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
	const before = console.error;
	// Use a sentinel rather than the ambient console.error so the assertion holds
	// independently of test order: it must be restored to exactly what it was on
	// entry, which fails if the restoring `finally` block is removed.
	const sentinel = () => {};
	console.error = sentinel;
	try {
		transpile("foo = Bar baz\n");
		strictEqual(console.error, sentinel, "console.error must be restored");
	} finally {
		console.error = before;
	}
});
