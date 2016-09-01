catalog
catalogKeyClassesAndExample
	^ '
- ""VOUnQLiteRepository"" is the main class. 

The entry point for an application using voyage would be: 

=    repository := VOUnQLiteRepository on: ''mydatabase.db''.
=    repository enableSingleton.'