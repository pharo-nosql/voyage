private
addToResultsIfSatisfy: anObject ifPresentDo: presentBlock
	(block cull: anObject)
		ifTrue: [ (results includes: anObject)
				ifTrue: presentBlock
				ifFalse: [ results add: anObject ] ]