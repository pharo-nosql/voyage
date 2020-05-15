open/close
openTruncate

	database ifNotNil: [ self close ].
	database := EJDB openTruncate: databaseReference fullName