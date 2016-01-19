reseting
resetDescriptionOf: aClass 
	VOMongoRepository allSubInstances 
		do: [ :each |	 each resetDescriptionForClass: aClass ]