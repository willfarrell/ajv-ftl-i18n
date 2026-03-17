// Copyright 2026 will Farrell, and ajv-ftl-i18n contributors.
// SPDX-License-Identifier: MIT
import { describe, expect, test } from "tstyche";
import ajvFtlI18n, { transpile } from "./index.js";

describe("index", () => {
	test("default export should be an object", () => {
		expect(ajvFtlI18n).type.not.toBe<undefined>();
	});

	test("default export should have transpile function", () => {
		expect(ajvFtlI18n.transpile).type.toBe<typeof transpile>();
	});

	test("transpile should be a function", () => {
		expect(transpile).type.not.toBe<undefined>();
		expect(transpile("ftl content", {})).type.toBe<any>();
	});

	test("default export should have locale keys", () => {
		expect(ajvFtlI18n.en).type.not.toBe<undefined>();
		expect(ajvFtlI18n.ar).type.not.toBe<undefined>();
		expect(ajvFtlI18n.de).type.not.toBe<undefined>();
		expect(ajvFtlI18n.fr).type.not.toBe<undefined>();
		expect(ajvFtlI18n.ja).type.not.toBe<undefined>();
		expect(ajvFtlI18n.zh).type.not.toBe<undefined>();
	});
});
