private
addToResultsIfSatisfy: anObject ifPresentDo: presentBlock
	(block cull: anObject)
		ifTrue: [ results addIfNotPresent: anObject ifPresentDo: presentBlock ]