public
execute

	^ blockClosure
		on: Error
		do: [ :error | 
			self logError: error.
			error acceptVOMongoExecuteError: self ]