accessing
withSession: aBlock
	| session |
	session := self obtainSession.
	[aBlock value: session]
		ensure: [self returnToPool: session]