persistence
save: anObject id: anId ensuringCurrent: aBoolean
	self execute: [ self basicSave: anObject id: anId ensuringCurrent: aBoolean ]