reseting
resetDescriptionCacheFromMethod: anAnnouncement 
	| class |
	class := anAnnouncement methodAffected methodClass.
	self resetDescriptionOf: class.