private
collectPragmasFrom: fromClass to: endClass 
	^ ((Pragma allNamed: #voyageDescriptionPlatforms: from: fromClass to: endClass) 
			select: [ :each | self isDescriptionSuitable: each ]),
	   (Pragma allNamed: #voyageDescription from: fromClass to: endClass),
	   (Pragma allNamed: #mongoDescription from: fromClass to: endClass).