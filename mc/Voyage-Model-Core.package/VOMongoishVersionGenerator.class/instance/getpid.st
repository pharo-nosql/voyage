private primitives
getpid
	^ self ffiCall: #(uint32 getpid(void)) module: LibC