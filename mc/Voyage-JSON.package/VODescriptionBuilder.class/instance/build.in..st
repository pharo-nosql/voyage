private building
build: aPragma in: aClass
	| description |

	description := aPragma method valueWithReceiver: aClass arguments: #().	
	((description accessor isKindOf: MANullAccessor) 
			and: [ description attributeName notNil ])
		ifTrue: [ description accessor: (self buildDirectAccessorFor: description attributeName) ].	

	^description