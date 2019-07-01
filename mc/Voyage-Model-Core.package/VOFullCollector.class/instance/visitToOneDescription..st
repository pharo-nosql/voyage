visiting
visitToOneDescription: aDescription
	| reference |
	reference := self readAt: aDescription ifAbsent: [ ^ self ].
	
	(reference isCollection & reference isString not)
		ifTrue: [ 
			reference do: [ :each | self value: each ] ]
		ifFalse: [
			self value: reference ]
