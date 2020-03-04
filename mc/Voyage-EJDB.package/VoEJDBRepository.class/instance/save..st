persistence
save: anObject

	self commit: [ 
		self save: anObject iteration: 2 ]