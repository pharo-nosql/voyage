persistence
removeConcern: aConcern for: aClass
	aConcern ifNotNil: [:dict | dict at: 'getLastError' put: 1 ].
	removeConcerns at: aClass put: aConcern