persistence
save: anObject
	| futures |
	
	futures := self serialize: anObject.
	2 timesRepeat: [ 
		futures reverseDo: [ :each | 
			self futureInsertOrUpdate: each id: (self idOf: each realObject) ] ].