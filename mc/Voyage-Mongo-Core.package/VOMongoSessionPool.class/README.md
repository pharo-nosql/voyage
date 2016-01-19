I'm a session pool for mongo sessions. 
I receive a host, a port and a databaseName. 
I can be used doing:

withSession: [ :session | ... ]

...but I prefer to be accessed using  

withDatabase: [ :db | ... ] 
onError: [ :session :db | ... ]