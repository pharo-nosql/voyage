tests
testVersionIsUnique
	| set |
	
	set := Set new.
	1 to: 50000 do: [ :i | set add: versionGenerator newVersion ].
	self assert: set size equals: 50000