private recovery
isRetryError: anError
	"Not all catched exceptions can be retried. PrimitiveFailed could be considered a retry error because it can be due to an invalid read, etc."
	^{ NetworkError. PrimitiveFailed } anySatisfy: [ :each | anError isKindOf: each ]