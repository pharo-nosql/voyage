private primitives
getCurrentProcessId
	"This is the windows equivalent to getpid"
	^ self ffiCall: #(uint32 GetCurrentProcessId(void)) module: 'Kernel32.dll'