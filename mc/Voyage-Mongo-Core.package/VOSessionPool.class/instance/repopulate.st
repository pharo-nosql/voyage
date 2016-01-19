private
repopulate
	"If we have less than half the pool filled, repopulate"
	
	(self size / 2) > sessions size ifTrue: [self populate]