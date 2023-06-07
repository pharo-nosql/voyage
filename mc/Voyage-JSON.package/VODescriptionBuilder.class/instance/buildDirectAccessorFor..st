private building
buildDirectAccessorFor: aString

	^ SRPluggableAccessor 
		read: [ :anObject | anObject readSlotNamed: aString ]
		write: [ :anObject :value | anObject writeSlotNamed: aString value: value ]