private
collectPragmasFor: aClass
	self flag: #todo. "#mongoDescription: if for backward compatibility. Remove when possible"
	^(Pragma allNamed: #mongoDescription: from: aClass theMetaClass to: Class), 
	(Pragma allNamed: #mongoDescription from: aClass theMetaClass to: Class)