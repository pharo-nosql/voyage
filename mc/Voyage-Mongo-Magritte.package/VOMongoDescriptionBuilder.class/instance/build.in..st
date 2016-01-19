private
build: aPragma in: aClass
	| description |
	description := aPragma method valueWithReceiver: aClass arguments: #().
		
	aPragma numArgs > 0 
		ifTrue: [ description attributeName: (aPragma argumentAt: 1) ].
	
	((description accessor isKindOf: MANullAccessor) 
			and: [ description attributeName notNil ])
		ifTrue: [ description accessor: (self buildDirectAccessorFor: description attributeName) ].	

	^description