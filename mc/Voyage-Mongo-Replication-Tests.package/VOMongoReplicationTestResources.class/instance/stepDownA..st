accessing
stepDownA: aNumberOfSeconds
	
	| mongo |
	mongo := Mongo 
		host: self mongoUrlA host 
		port: self mongoUrlA port.

	mongo open.

	[ mongo replicaSetStepDown: aNumberOfSeconds ]
		on: Error 
		do: [:e | "Ignore" ].

	mongo isOpen ifTrue: [ mongo close ]