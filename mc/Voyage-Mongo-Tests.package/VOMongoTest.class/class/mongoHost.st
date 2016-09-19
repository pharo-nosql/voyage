accessing
mongoHost
	^ MongoHost ifNil: [ VOMongoRepository defaultHost ]