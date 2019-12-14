visiting
visitToManyDescription: aDescription
	| references |
	references := self readAt: aDescription ifAbsent: [ ^ self ].
	references do: [ :each | self value: each ]