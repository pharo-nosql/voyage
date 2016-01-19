private
flush
	[sessions isEmpty] whileFalse: [
		self ensureDisconnected: sessions nextOrNil]