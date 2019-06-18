persistence
dropDatabase

	self dropDatabaseOperation
		repository: self;
		execute