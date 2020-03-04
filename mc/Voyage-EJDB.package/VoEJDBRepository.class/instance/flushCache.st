accessing
flushCache
	
	super flushCache.
	cacheByCollection do: [ :each | each flush ]