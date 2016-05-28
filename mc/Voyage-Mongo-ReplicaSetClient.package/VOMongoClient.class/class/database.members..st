instance creation
database: aString members: aCollection 
	^ self basicNew
		initializeDatabase: aString members: aCollection;
		yourself