private replication
checkLastError: db
	| lastError |
	lastError := db lastError.
	lastError 
		codeIfPresent: [ lastError signal ] 
		ifAbsent: [].
	^lastError