import { ok, strictEqual } from "node:assert";
import test from "node:test";
import fc from "fast-check";
import transpile from "./transpile.js";

// Either transpile succeeds and returns JavaScript source, or it rejects the
// input with a proper Error — anything else (TypeError, non-Error throw) fails.
const transpileOracle = (ftl, options) => {
	let js;
	try {
		js = transpile(ftl, options);
	} catch (error) {
		ok(error instanceof Error, `should throw an Error, got ${typeof error}`);
		return;
	}
	strictEqual(typeof js, "string", "should return JavaScript source");
	ok(js.length > 0, "should not return empty source");
};

test("fuzz: transpile with random FTL-like input should not throw unexpectedly", () => {
	fc.assert(
		fc.property(
			fc.record({
				locale: fc.array(fc.constantFrom("en", "fr", "de", "es", "ja", "zh"), {
					minLength: 1,
					maxLength: 3,
				}),
			}),
			fc.stringMatching(/^[a-z][a-z0-9-]* = [A-Za-z0-9 {$}]+$/),
			(options, ftl) => {
				transpileOracle(ftl, options);
			},
		),
		{ numRuns: 500 },
	);
});

test("fuzz: transpile with random strings should not crash", () => {
	fc.assert(
		fc.property(fc.string({ maxLength: 200 }), (ftl) => {
			transpileOracle(ftl, { locale: ["en"] });
		}),
		{ numRuns: 1000 },
	);
});
