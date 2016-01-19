instance creation
classFor: aClass
	"Make a subclass of myself that is large enough to hold an instance of aClass.
	This makes becomeForward: resolution much faster, due to a fast path which simply memcpy's.
	For variably sized or compact classes, this is sadly not possible, and we need Spur for fast proxys."

	| bogusSlots |
	^ (aClass instSpec = self instSpec
		and: [ 
			aClass layout compactClassIndex = self layout compactClassIndex
				and: [ (bogusSlots := aClass layout fieldSize - self layout fieldSize) > 0 ] ])
		ifFalse: [ self ]
		ifTrue: [ |shapedClass|
			shapedClass := 
			(AnonymousClassInstaller
				make: [ :builder | 
					builder
						superclass: self;
						layoutClass: self layout class;
						slots: (aClass layout allVisibleSlots last: bogusSlots) ]).
			shapedClass methodDict at: #becomeForward: put: self >> #becomeForwardWithSameShape:.
			shapedClass  ]