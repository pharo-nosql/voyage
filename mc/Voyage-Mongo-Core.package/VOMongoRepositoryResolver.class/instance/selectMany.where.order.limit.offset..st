persistence
selectMany: aClass where: aDictionary order: orderDictionary limit: limit offset: offset 
	self execute: [ ^self basicSelectMany: aClass where: aDictionary order: orderDictionary limit: limit offset: offset ]