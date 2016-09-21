testing
isAbstract
	^ super isAbstract or: [ self name = #VOMongoTest ]