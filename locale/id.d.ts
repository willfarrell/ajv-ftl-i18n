declare const localize: (
	errors:
		| Array<{
				keyword: string;
				message?: string;
				params?: Record<string, unknown>;
		  }>
		| null
		| undefined,
) => void;
export default localize;
