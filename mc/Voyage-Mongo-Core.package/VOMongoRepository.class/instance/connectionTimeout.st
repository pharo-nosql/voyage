accessing
connectionTimeout
	^ connectionTimeout ifNil: [ connectionTimeout := self class defaultConnectionTimeout ]
