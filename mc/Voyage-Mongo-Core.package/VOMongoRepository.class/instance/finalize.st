finalization
finalize

	self retry: [ self stopSDAMClient ] times: 10