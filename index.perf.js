import test from "node:test";
import { Bench } from "tinybench";
import transpile from "./transpile.js";

test("perf: transpile benchmarks", async () => {
	const suite = new Bench({ name: "ajv-ftl-i18n" });

	const simpleFtl = "hello = Hello World";
	const complexFtl = [
		"required = must have required property {$missingProperty}",
		"type = must be {$type}",
		"maxLength = must not be longer than {$limit} {$limit ->",
		"  [one] character",
		"  *[other] characters",
		"  }",
		"minimum = must be >= {$limit}",
	].join("\n");

	suite
		.add("simple message", () => {
			transpile(simpleFtl, { locale: ["en"] });
		})
		.add("complex messages", () => {
			transpile(complexFtl, { locale: ["en"] });
		});

	await suite.run();
	console.table(suite.table());
});
