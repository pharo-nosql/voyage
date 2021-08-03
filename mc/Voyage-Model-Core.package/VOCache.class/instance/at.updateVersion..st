accessing
at: anId updateVersion: aNumber
	self mutex critical: [ 
		versions at: anId put: aNumber ]