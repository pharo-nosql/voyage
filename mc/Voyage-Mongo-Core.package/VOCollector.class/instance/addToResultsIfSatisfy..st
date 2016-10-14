private
addToResultsIfSatisfy: anObject
	(block cull: anObject)
		ifTrue: [ results add: anObject ]