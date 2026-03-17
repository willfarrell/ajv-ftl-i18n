// Copyright 2026 will Farrell, and ajv-ftl-i18n contributors.
// SPDX-License-Identifier: MIT
declare module "./locale/*.js" {
	const localize: (
		errors: Array<{ keyword: string; message?: string; params?: Record<string, unknown> }> | null | undefined,
	) => void;
	export default localize;
}
