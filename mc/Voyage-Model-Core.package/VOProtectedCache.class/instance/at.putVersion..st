accessing
at: anId putVersion: aNumber
	self mutex critical: [ 
		versions at: anId put: aNumber ]