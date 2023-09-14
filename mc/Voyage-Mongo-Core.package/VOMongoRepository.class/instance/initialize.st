initialization
initialize

	super initialize.
	
	"register for finalization"
	WeakRegistry default add: self.
	
	insertConcerns := SmallDictionary new.
	removeConcerns := SmallDictionary new.
	updateConcerns := SmallDictionary new.