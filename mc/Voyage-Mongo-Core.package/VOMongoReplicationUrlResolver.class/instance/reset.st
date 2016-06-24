accessing
reset
	"Reset mongo urls. If a basic reset is already in execution, just wait it finishes."
	
	self resetIfCurrent: currentToken.