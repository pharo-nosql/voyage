as yet unclassified
save: anObject withOptions: aCollection 
	| operations |
	operations := self serialize: anObject.
	aCollection do: [ :each |
		(each isSymbol | each isString) ifTrue: [
			operations first perform: each asSymbol ].
		(each class = Association) ifTrue: [ 
			operations first perform: each key asSymbol asMutator with: each value ] ].
	operations execute