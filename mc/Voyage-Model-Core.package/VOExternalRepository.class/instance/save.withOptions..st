private
save: anObject withOptions: aCollection 
	| operations |
	operations := self serialize: anObject.
	self applyOptions: aCollection to: operations first.
	operations execute.
	(operations instVarNamed: #operations) do: [ :each |
        self addToOperationLog: each ].