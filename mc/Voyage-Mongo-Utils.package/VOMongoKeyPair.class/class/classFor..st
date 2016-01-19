private
classFor: valueObject 
	^self withAllSubclasses detect: [ :each | each canHandle: valueObject ]