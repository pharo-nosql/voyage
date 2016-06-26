accessing
reset
	"Reset mongo urls. If a reset is already in execution (by other process), just wait it finishes."
	
	self resetIfCurrent: currentToken.