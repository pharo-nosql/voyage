execution
execute
	repository withNewVersionFor: self do: [ 
		serialized
			at: repository fieldRootId put: id.
		ensureCurrent 
			ifTrue: [ self basicFireAndCheckUpdate: object serialized: serialized  withId: id ]
			ifFalse: [ self basicFireAndForgetUpdate: object serialized: serialized withId: id ] ]
