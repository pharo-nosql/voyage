*Voyage-Mongo-Core-Extensions
asMongoUrl
	| url |
	url := ZnUrl fromString: self defaultScheme: #mongodb.
	url hasPort ifFalse: [ url port: 27017 ].
	^ url