accessing
value: anObject description: aDescription
	| oldObject |
	self addToResultsIfSatisfy: anObject.

	oldObject := self object.
	[ 
	  self object: anObject.
	  self visit: aDescription ]
	ensure: [ 
		self object: oldObject ].

	^ self results