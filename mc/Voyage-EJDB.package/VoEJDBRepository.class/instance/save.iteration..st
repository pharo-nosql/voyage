private persistence
save: anObject iteration: aNumber
	| operations |

	aNumber = 0 ifTrue: [ ^ self ].
		
	operations := self serialize: anObject.
	operations execute.
	"As a simple optimization, do not iterate if I have just one future (which
	 means there are not relations). But if there are references, and I do not know 
	 if they are cyclic... so I persist twice to be sure all references are correctly 
	 setted."
	operations size = 1 
		ifFalse: [ self save: anObject iteration: aNumber - 1 ]