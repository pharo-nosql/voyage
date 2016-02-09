initialization
initializeId: anId
	self initialize.
	futureId := anId ifNil: [ OID nextOID ]