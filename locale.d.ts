// Copyright 2026 will Farrell, and ajv-ftl-i18n contributors.
// SPDX-License-Identifier: MIT

type Localize = (
	errors:
		| Array<{
				keyword: string;
				message?: string;
				params?: Record<string, unknown>;
		  }>
		| null
		| undefined,
) => void;

declare module "./locale/ar.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/ca.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/cs.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/de.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/en.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/es.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/fi.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/fr.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/hu.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/id.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/it.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/ja.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/ko.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/nb.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/nl.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/pl.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/pt-BR.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/ru.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/sk.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/sv.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/th.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/zh.js" {
	const localize: Localize;
	export default localize;
}
declare module "./locale/zh-TW.js" {
	const localize: Localize;
	export default localize;
}
