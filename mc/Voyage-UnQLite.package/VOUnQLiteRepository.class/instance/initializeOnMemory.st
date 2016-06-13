initialization
initializeOnMemory
	self initialize.
	database := PqDatabase openOnMemory.
	