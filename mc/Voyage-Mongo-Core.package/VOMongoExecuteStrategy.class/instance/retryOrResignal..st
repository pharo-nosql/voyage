private
retryOrResignal: error
	"Execute again if there are still retries left. Else, just resignal the error."

	^ retriesLeft > 0 
		ifTrue: [
			retriesLeft := retriesLeft - 1.
			self execute ]
		ifFalse: [ 
			self resignal: error ]