execution
execute
	repository withNewVersionFor: self do: [ 
		ensureCurrent 
			ifTrue: [ self basicFireAndCheckUpdate: object serialized: serialized  withId: id ]
			ifFalse: [ self basicFireAndForgetUpdate: object serialized: serialized withId: id ] ]
