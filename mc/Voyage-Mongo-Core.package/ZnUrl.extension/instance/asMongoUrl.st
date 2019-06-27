*Voyage-Mongo-Core
asMongoUrl
	self assert: (self scheme = #mongodb).
	^self