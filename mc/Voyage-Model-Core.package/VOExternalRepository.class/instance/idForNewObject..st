private
idForNewObject: anObject
	^ anObject newVoyageId ifNil: [ 
		self newId ]