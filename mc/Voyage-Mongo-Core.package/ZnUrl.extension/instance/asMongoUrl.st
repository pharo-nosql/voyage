*Voyage-Mongo-Core-Extensions
asMongoUrl
	self assert: (self scheme = #mongodb).
	^self