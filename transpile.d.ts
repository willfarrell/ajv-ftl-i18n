// Copyright 2026 will Farrell, and ajv-ftl-i18n contributors.
// SPDX-License-Identifier: MIT
declare const transpile: (
	ftl: string,
	options?: {
		locale?: string | string[];
		comments?: boolean;
		[key: string]: unknown;
	},
) => string;
export default transpile;
