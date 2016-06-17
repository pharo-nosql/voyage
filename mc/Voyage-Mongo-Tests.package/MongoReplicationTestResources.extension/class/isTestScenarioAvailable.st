*Voyage-Mongo-Tests-Extensions
isTestScenarioAvailable
	"Detects whether the testing scenario is available (see _manual_set_up_)"
	
	^ [ self newMongoA open; close. true ] 
			on: NetworkError 
			do: [ 	false ]