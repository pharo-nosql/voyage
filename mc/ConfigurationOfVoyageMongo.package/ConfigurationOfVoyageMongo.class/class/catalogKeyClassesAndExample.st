catalog
catalogKeyClassesAndExample
	^ '
- ""VOMongoRepository"" is the main class. 

The entry point for an application using voyage would be: 

=    repository := VOMongoRepository host: ''yourhost'' database: ''yourdatabase''.
=    repository enableSingleton.'