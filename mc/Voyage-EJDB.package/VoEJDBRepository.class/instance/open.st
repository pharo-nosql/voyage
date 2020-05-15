open/close
open

	database ifNotNil: [ self close ].
	database := EJDB open: databaseReference fullName