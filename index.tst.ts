// Copyright 2026 will Farrell, and ajv-ftl-i18n contributors.
// SPDX-License-Identifier: MIT
import { describe, expect, test } from "tstyche";
import ajvFtlI18n, { transpile } from "./index.js";

describe("index", () => {
	test("default export should be an object", () => {
		expect(ajvFtlI18n).type.not.toBeUndefined();
	});

	test("default export should have transpile function", () => {
		expect(ajvFtlI18n.transpile).type.toBe<typeof transpile>();
	});

	test("transpile should be a function", () => {
		expect(transpile).type.not.toBeUndefined();
		expect(transpile("ftl content", {})).type.toBeAny();
	});

	test("default export should have locale keys", () => {
		expect(ajvFtlI18n.en).type.not.toBeUndefined();
		expect(ajvFtlI18n.ar).type.not.toBeUndefined();
		expect(ajvFtlI18n.de).type.not.toBeUndefined();
		expect(ajvFtlI18n.fr).type.not.toBeUndefined();
		expect(ajvFtlI18n.ja).type.not.toBeUndefined();
		expect(ajvFtlI18n.zh).type.not.toBeUndefined();
	});
});
