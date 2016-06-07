initialization
populate
	self mutex critical: [
		self isPopulating ifFalse: [
			process :=  [
					self size timesRepeat: [
						self isFull ifFalse: [
							[ self returnToPool: (self ensureConnected: self newSession) ] 
								on: NetworkError do: [ "skip" ]
				]]]
				forkAt: Processor lowestPriority
				named: 'Voyage mongo pool: populating']]