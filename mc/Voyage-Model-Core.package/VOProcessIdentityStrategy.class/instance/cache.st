accessing
cache
	"Return a cache per process. As this is per process the cache itself does not need to be 
	protected. Reading of the dictionary does not to be protected. The same process will never 
	stumble over a wrong value in its own key. But writing can have unwanted side effects and so 
	we protect it for safety"
	^ caches 
		at: Processor activeProcess 
		ifAbsent: [ 
			mutex critical: [
				caches 
					at: Processor activeProcess 
					put: VOCache new ] ]