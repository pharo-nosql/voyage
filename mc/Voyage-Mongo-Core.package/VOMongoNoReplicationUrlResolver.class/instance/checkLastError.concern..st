api
checkLastError: db concern: aConcern
	| lastError |
	"It isn't necessary to check persistence errors when replication is disabled
	unless there is a concern we need to enforce"
	aConcern ifNil: [ ^ self ].

	lastError := db lastError: aConcern.
	lastError
		codeIfPresent: [ lastError signal ] 
		ifAbsent: [].