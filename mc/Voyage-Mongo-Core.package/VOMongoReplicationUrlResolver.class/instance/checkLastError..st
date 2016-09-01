api
checkLastError: db
	| lastError |
	lastError := db lastError.
	lastError
		codeIfPresent: [ lastError signal ] 
		ifAbsent: [].