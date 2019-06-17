accessing
add: anOperation 
	operations ifNil: [ operations := OrderedCollection new ].
	operations add: anOperation