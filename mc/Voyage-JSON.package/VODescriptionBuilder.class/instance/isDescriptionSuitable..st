private
isDescriptionSuitable: aPragma
	"Answer if this description is suitable for me. 
	 Descriptions are usually suitable (that's the reason of the default true answer), but 
	 it can happen that user restrict in which platform the description is avalible... 
	 this method answer that."
	^ (aPragma argumentAt: 1) includes: self repository platformIdentifier
	