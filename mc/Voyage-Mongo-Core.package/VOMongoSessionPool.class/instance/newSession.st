private
newSession 
	^ Mongo 
		host: self host 
		port: self port