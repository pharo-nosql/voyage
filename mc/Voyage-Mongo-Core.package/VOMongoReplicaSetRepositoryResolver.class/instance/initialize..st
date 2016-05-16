initialization
initialize: aRepository 
	repository := aRepository.
	resolverByMemberName := Dictionary new.
	self reset.
	self initialize.
