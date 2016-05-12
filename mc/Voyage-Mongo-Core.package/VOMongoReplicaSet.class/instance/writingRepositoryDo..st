private
writingRepositoryDo: aBlockClosure
	^[aBlockClosure value: self writingRepository]
		on: Error do: [ 
			self flag: #todo. "Should be a more sophisticated mechanism. Retry several times. Have some timeout. Maybe only catch specific errors?"

			self invalidateWritingRepository.
			aBlockClosure value: self writingRepository]