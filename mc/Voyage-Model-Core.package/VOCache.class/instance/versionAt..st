accessing
versionAt: anId
	^ versions 
		at: anId 
		ifAbsent: [ 0 ]