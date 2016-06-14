private building
buildClass: aClass
	| container |

	container :=  self buildContainerFor: aClass.	
	^ container 
		addAll: (self buildDescriptionsFor: aClass inContainer: container);
		yourself  