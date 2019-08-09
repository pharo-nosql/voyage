persistence
save: anObject
	| operations |
	
	operations := self serialize: anObject.
	self commit: [ 
		| iterations |
		
		"As a simple optimization, do not iterate twice if I have just one future (which
		 means there are not relations). But if there are references, and I do not know 
		 if they are cyclic... so I persist twice to be sure all references are correctly 
		 setted."
		iterations := operations size > 1 ifTrue: [ 2 ] ifFalse: [ 1 ].
		iterations timesRepeat: [ 
			operations execute ] ]