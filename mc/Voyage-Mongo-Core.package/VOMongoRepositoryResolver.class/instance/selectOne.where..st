persistence
selectOne: aClass where: aDictionary
	self execute: [ 
		^self basicSelectOne: aClass where: aDictionary ]