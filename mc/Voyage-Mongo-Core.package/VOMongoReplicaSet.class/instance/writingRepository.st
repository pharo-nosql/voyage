private
writingRepository
	^ writingRepository ifNil: [ 
		writingRepository := self currentPrimaryRepository ]