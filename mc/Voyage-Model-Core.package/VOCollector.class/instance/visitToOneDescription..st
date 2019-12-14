visiting
visitToOneDescription: aDescription
	| reference |
	reference := self readAt: aDescription ifAbsent: [ ^ self ].
	self value: reference