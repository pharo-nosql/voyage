persistence
save: anObject
	| futures |
	
	futures := self serialize: anObject.
	self commit: [ 
		"As a simple optimization, do not iterate twice if I have just one future (which means 
		 there are not relations)"
		futures size = 1 ifTrue: [ 
			^ self futureInsertOrUpdate: futures first id: (self idOf: futures first realObject) ].
		"Ok, they are references, and I do not know if they are cyclic... so I persist twice to 
		 be sure all references are correctly setted."
		2 timesRepeat: [ 
			futures reverseDo: [ :each | 
			 self futureInsertOrUpdate: each id: (self idOf: each realObject) ] ] ]. 