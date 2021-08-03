private
withNewVersionFor: anOperation do: aBlock

	| newVersion |
	newVersion := self versionGenerator newVersion.
	anOperation serialized at: self fieldVersion put: newVersion.
	aBlock cull: newVersion.

	(self cacheFor: anOperation object class)
		atId: anOperation id
		putObject: anOperation object
		version: newVersion