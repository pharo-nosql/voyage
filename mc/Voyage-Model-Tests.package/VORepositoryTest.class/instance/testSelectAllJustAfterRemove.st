tests
testSelectAllJustAfterRemove
	"This test reproduces a bug"

	1 to: 30 do: [ :index |
		| pilot pilots |
	
		pilot := VOTestPilot new
			name: 'Esteban', index asString;
			yourself.

		self repository save: pilot.

		pilots := self repository selectAll: VOTestPilot.
		self deny: pilots isEmpty.

		self repository remove: pilot.
	
		pilots := self repository selectAll: VOTestPilot.
		self assert: pilots isEmpty.
	]