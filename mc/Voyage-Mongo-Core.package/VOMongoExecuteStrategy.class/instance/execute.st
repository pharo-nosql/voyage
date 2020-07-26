public
execute

	^ blockClosure
		on: Error
		do: [ :error | 
			repository isDebug ifTrue: [ self logError: error ].
			error acceptVOMongoExecuteError: self ]