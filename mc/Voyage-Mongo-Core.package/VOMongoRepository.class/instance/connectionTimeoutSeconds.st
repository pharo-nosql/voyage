accessing
connectionTimeoutSeconds
	^ connectionTimeoutSeconds ifNil: [ connectionTimeoutSeconds := self class defaultConnectionTimeoutSeconds ]