accessing
objectAndVersionAt: anOID
	self mutex critical: [
		^Array
			with: (self at: anOID)
			with: (self versionAt: anOID)
	]