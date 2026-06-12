import { deepEqual, doesNotMatch, ok } from "node:assert";
import { readFile } from "node:fs/promises";
import test from "node:test";
import _ajv from "ajv/dist/2020.js";
import errors from "ajv-errors";
import formats from "ajv-formats";
import ftlLocalize from "../index.js";

const Ajv = _ajv.default; // esm workaround for linting

// ajv
const ajv = new Ajv({
	allErrors: true,
	messages: true, // must be true for errorMessages
	strictTuples: false, // schema.json uses prefixItems 1-tuples intentionally
	//uriResolver,
	keywords: [],
});
formats(ajv);
errors(ajv);

const schema = JSON.parse(
	await readFile(`./test/files/schema.json`, { encoding: "utf8" }),
);
const data = JSON.parse(
	await readFile(`./test/files/schema-data.json`, { encoding: "utf8" }),
);
const validate = ajv.compile(schema);
validate(data);
ajv.removeSchema();

// process
const locales = Object.keys(ftlLocalize).filter((key) => key !== "transpile");
const ftlErrors = {};
for (const locale of locales) {
	ftlErrors[locale] = JSON.parse(JSON.stringify(validate.errors));
	ftlLocalize[locale](ftlErrors[locale]);
}

// tests
for (const locale of locales) {
	test(`Should localize every error (${locale})`, async () => {
		for (const error of ftlErrors[locale]) {
			ok(
				typeof error.message === "string" && error.message.length > 0,
				`"${error.keyword}" should have a message`,
			);
			doesNotMatch(
				error.message,
				/undefined|NaN/,
				`"${error.keyword}" should have all params interpolated`,
			);
		}
	});
}

// errorMessages
test(`Should translate errorMessage`, async () => {
	const schema = {
		type: "object",
		required: ["foo"],
		properties: {
			foo: { type: "integer" },
		},
		additionalProperties: false,
		errorMessage: "anyOf",
	};
	const validate = ajv.compile(schema);
	validate({});
	ajv.removeSchema();
	ftlLocalize.en(validate.errors);
	deepEqual(validate.errors[0].message, 'must match a schema in "anyOf"');
});

test(`Should translate errorMessage with templates`, async () => {
	const schema = {
		type: "object",
		properties: {
			height: {
				type: "number",
				minimum: 4,
			},
			width: {
				type: "string",
			},
		},
		errorMessage: {
			properties: {
				// biome-ignore lint/suspicious/noTemplateCurlyInString: intentional schema value syntax
				height: "uniqueItems, j:${/height}, i:${/width}",
			},
		},
	};
	const validate = ajv.compile(schema);
	validate({ height: -2, width: "4, 000" });
	ajv.removeSchema();
	ftlLocalize.en(validate.errors);
	deepEqual(
		validate.errors[0].message,
		"must not have duplicate items (items ## -2 and 4, 000 are identical)",
	);
});

test(`Should parse multiple quoted JSON-pointer values`, async () => {
	const errors = [
		{
			keyword: "errorMessage",
			message: 'uniqueItems, j:"a, b", i:"c d"',
			params: {},
		},
	];
	ftlLocalize.en(errors);
	deepEqual(
		errors[0].message,
		"must not have duplicate items (items ## a, b and c d are identical)",
	);
});

test(`Should parse JSON-pointer values containing colons`, async () => {
	const errors = [
		{
			keyword: "errorMessage",
			message: 'uniqueItems, j:"12:30", i:5',
			params: {},
		},
	];
	ftlLocalize.en(errors);
	deepEqual(
		errors[0].message,
		"must not have duplicate items (items ## 12:30 and 5 are identical)",
	);
});
