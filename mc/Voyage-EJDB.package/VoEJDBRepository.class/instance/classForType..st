private
classForType: aSymbol 

	^ self synonymTable 
		at: aSymbol
		ifPresent: [ :aClass |  aClass ]
		ifAbsent: [ Smalltalk globals at: aSymbol ]