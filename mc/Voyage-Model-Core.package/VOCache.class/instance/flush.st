accessing
flush
	self mutex critical: [
		objects := WeakValueDictionary new.
		reversedObjects := WeakKeyDictionary new.
		versions := Dictionary new ].