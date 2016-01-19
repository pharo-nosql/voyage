testing
validateConectionHost: host port: port
	| mongo |
	
	mongo :=  Mongo host: host port: port.
	^[ mongo open; close. true ] 
	on: Error 
	do: [ :e | false ]