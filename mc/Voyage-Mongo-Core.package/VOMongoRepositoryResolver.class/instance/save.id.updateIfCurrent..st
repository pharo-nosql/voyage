persistence
save: anObject id: anId updateIfCurrent: aBoolean
	self execute: [ self basicSave: anObject id: anId updateIfCurrent: aBoolean ]