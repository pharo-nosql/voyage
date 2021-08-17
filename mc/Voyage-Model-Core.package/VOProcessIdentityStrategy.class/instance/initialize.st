initialization
initialize 
	super initialize.
	caches := WeakIdentityKeyDictionary new.
	mutex := Mutex new
