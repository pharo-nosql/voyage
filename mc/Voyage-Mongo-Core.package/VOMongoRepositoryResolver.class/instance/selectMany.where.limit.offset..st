persistence
selectMany: aClass where: aDictionary limit: limit offset: offset 
	self execute: [ ^self basicSelectMany: aClass where: aDictionary limit: limit offset: offset ]