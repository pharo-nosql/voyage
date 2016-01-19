private
removeDuplicated: aCollection
	"It remove duplicated description (if same method name in hierarchy).
	 Yeah, could be better implemented, but I'm tired :("
	^(aCollection reversed
		inject: Dictionary new
		into: [ :all :each | 
			all at: each selector put: each;
			yourself ])
		values
		asSet 
		asArray