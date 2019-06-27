persistence
selectMany: aClass where: aBlock limit: aLimit offset: anOffset
	| list |
	list := self selectMany: aClass where: aBlock.
	(anOffset > list size) ifTrue: [ ^ {  } ].
	^ list asOrderedCollection 
		copyFrom: anOffset + 1
		to: (anOffset + aLimit min: list size)