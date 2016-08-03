private
handleBSONError: error
	"Unrecoverable error: just resignal it"

	^ self resignal: error
