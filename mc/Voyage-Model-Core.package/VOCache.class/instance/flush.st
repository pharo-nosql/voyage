accessing
flush

	self mutex critical: [
		objects := WeakValueDictionary new.
		reversedObjects := VOWeakKeyDictionary new
			reversedDictionary: objects;
			yourself.
		versions := Dictionary new ].