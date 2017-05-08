api
checkLastError: db concern: aConcern
	| lastError |
	lastError := db lastError: aConcern.
	lastError
		codeIfPresent: [ lastError signal ] 
		ifAbsent: [].