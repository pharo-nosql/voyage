persistence
save: anObject
	(VOFullCollector allRootsFrom: anObject in: self) do: [ :obj |  
		(self list: obj class) add: obj ]