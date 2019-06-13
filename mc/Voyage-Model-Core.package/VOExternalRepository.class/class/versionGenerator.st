accessing
versionGenerator
	^ versionGenerator ifNil: [ 
		versionGenerator := self defaultVersionGenerator ]