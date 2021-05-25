as yet unclassified
nextSequenceNumber

	^ (self readOrCreateSequence at: 'value')
		ifNotNil: [ :v | ^ v at: 'number']
		ifNil: [ 0 ]