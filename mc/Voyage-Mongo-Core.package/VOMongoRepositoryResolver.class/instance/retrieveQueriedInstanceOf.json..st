private retrieving
retrieveQueriedInstanceOf: aClass json: aDictionary
	^self retrieveInstanceOf: aClass json: aDictionary lazy: false