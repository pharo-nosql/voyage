accessing
repositoryContainerClass
	^RepositoryContainerClass 
		ifNil: [ RepositoryContainerClass := self defaultRepositoryContainerClass ]