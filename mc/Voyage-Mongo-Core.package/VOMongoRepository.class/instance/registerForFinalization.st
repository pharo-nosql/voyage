initialization
registerForFinalization
	| registryClass |
	
	registryClass := self class environment classNamed: #FinalizationRegistry.
	registryClass ifNil: [ 
		registryClass := self class environment classNamed: #WeakRegistry ].
	registryClass ifNil: [ 
		self error: 'Something went wrong, there is not finalization registry available!' ]. 
	
	registryClass default add: self