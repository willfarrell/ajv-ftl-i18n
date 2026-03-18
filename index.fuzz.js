import test from "node:test";
import fc from "fast-check";
import transpile from "./transpile.js";

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
				try {
					transpile(ftl, options);
				} catch {
					// Expected errors from invalid FTL are OK
				}
			},
		),
		{ numRuns: 500 },
	);
});

test("fuzz: transpile with random strings should not crash", () => {
	fc.assert(
		fc.property(fc.string({ maxLength: 200 }), (ftl) => {
			try {
				transpile(ftl, { locale: ["en"] });
			} catch {
				// Expected
			}
		}),
		{ numRuns: 1000 },
	);
});
