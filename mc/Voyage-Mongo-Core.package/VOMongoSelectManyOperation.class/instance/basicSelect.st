private persistence
basicSelect
	^ self repository 
		collectionAt: queryClass
		readingDo: [ :collection |
			collection 
				select: (where ifNil: [ #() ])
				limit: limit
				offset: offset
				order: (sortBlock ifNil: [ #() ])
				flags: QueryOperation flagSlaveOk ]
