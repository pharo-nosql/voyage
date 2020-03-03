persistence
basicSelectOne
	
	^ ((repository collectionAt: queryClass) documentAt: id)
		at: VoEJDBJSONSerializer fieldId put: id;
		yourself