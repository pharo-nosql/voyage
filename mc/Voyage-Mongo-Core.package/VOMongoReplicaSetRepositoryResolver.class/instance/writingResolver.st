private replication
writingResolver
	^ writingResolver ifNil: [ 
		writingResolver := self currentPrimaryResolver ]