accessing
executeStrategyClass
	^ executeStrategyClass ifNil: [
		executeStrategyClass := VOMongoExecuteStrategy ]