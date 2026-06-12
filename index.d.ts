// Copyright 2026 will Farrell, and ajv-ftl-i18n contributors.
// SPDX-License-Identifier: MIT
import transpileImport from "./transpile.js";

export type Localize = (
	errors:
		| Array<{
				keyword: string;
				message?: string;
				params?: Record<string, unknown>;
		  }>
		| null
		| undefined,
) => void;

export declare const transpile: typeof transpileImport;

declare const localize: {
	transpile: typeof transpileImport;
	ar: Localize;
	ca: Localize;
	cs: Localize;
	de: Localize;
	en: Localize;
	es: Localize;
	fi: Localize;
	fr: Localize;
	hu: Localize;
	id: Localize;
	it: Localize;
	ja: Localize;
	ko: Localize;
	nb: Localize;
	nl: Localize;
	pl: Localize;
	"pt-BR": Localize;
	ru: Localize;
	sk: Localize;
	sv: Localize;
	th: Localize;
	zh: Localize;
	"zh-TW": Localize;
};
export default localize;
