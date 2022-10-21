accessing
objectAndVersionAt: anOID
	^ Array
			with: (self at: anOID)
			with: (self versionAt: anOID)