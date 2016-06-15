accessing
executeStrategyClass
	^ executeStrategyClass ifNil: [
		executeStrategyClass := VOMongoSimpleExecuteStrategy ]