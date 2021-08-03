accessing
poolSize 
	^ poolSize ifNil: [
		poolSize := self class defaultPoolSize ]