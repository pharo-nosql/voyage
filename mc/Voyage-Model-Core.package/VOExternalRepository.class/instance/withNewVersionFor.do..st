private
withNewVersionFor: anOperation do: aBlock
	| newVersion |
	
	newVersion := self versionGenerator newVersion.
	anOperation serialized 
		at: self fieldVersion put: newVersion.
	aBlock cull: newVersion.
		
	self cacheAt: anOperation id put: anOperation object.
	self cacheAt: anOperation id putVersion: newVersion.