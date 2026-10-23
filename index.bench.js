import { bench, suite } from "node:bench";
import transpile from "./transpile.js";

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

suite("ajv-ftl-i18n", () => {
	bench("simple message", { warmup: 100, samples: 30 }, (b) => {
		const ops = 1_000;
		b.start();
		for (let i = 0; i < ops; i++) transpile(simpleFtl, { locale: ["en"] });
		b.end(ops);
	});

	bench("complex messages", { warmup: 100, samples: 30 }, (b) => {
		const ops = 1_000;
		b.start();
		for (let i = 0; i < ops; i++) transpile(complexFtl, { locale: ["en"] });
		b.end(ops);
	});
});
