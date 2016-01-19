accessing
obtainSession
	| session |
	self repopulate.
	session := sessions nextOrNil ifNil: [self newSession].
	self ensureConnected: session.
	^session