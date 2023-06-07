private building
build: aPragma in: aClass
	| description |

	description := aPragma method valueWithReceiver: aClass arguments: #().	
	((description accessor isKindOf: SRNullAccessor) 
		and: [ description attributeName notNil ])
		ifTrue: [ description accessor: (self buildDirectAccessorFor: description attributeName) ].	

	^description