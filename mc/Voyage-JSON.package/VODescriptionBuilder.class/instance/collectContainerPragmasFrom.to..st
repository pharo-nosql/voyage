private
collectContainerPragmasFrom: startClass to: endClass
	^ ((Pragma allNamed: #voyageContainerPlatforms: from: startClass to: endClass)
			select: [ :each | self isDescriptionSuitable: each ]),
		(Pragma allNamed: #voyageContainer from: startClass to: endClass),
	  	(Pragma allNamed: #mongoContainer from: startClass to: endClass)