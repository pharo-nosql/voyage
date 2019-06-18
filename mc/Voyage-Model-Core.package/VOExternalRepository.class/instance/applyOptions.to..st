private
applyOptions: aCollection to: anOperation
	"enable setting low-level options on an operation. aCollection can consist
	of symbol/strings and associations. Symbol/strings will result in an unary
	call, associations will be treated as keyword message plus argument"
	aCollection do: [ :each |
		(each isSymbol | each isString) ifTrue: [
				anOperation perform: each asSymbol ].
			(each class = Association) ifTrue: [ 
				anOperation perform: each key asSymbol asMutator with: each value ] ]