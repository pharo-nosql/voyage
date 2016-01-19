as yet unclassified
initialize 
	super initialize.
	futureId := OID nextOID.
	realObject := self. "Is is going to be replaced when the become happens"