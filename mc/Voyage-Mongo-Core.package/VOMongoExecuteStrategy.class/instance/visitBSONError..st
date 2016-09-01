private - visiting
visitBSONError: error
	"Unrecoverable error: just resignal it"

	^ self resignal: error
