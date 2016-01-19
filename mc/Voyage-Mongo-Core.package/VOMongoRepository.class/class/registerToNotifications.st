class initialization
registerToNotifications
	self unregisterToNotifications.
	SystemAnnouncer uniqueInstance
		on: MethodAdded send: #resetDescriptionCacheFromMethod: to: self;
		on: MethodModified send: #resetDescriptionCacheFromMethod: to: self;
		on: MethodRemoved send: #resetDescriptionCacheFromMethod: to: self