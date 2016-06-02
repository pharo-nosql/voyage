tests
test003PrimaryStepsDown

	repository := VOMongoRepository 
		database: 'rs-test' 
		members: #((localhost 27033)).

	repository save: VOTestCat new.
	self assert: repository primaryMember equals: #(localhost 27031).
	
	1halt. 
	"
	Now run:
		./rs-stepDown20s.sh
	After some seconds, continue:
	"

	repository save: VOTestCat new.
	self assert: repository primaryMember equals: #(localhost 27032).

	1halt. 
	"
	Now, wait a bit and then check it's up again.
	"
	
	repository save: VOTestCat new.
	self assert: repository primaryMember equals: #(localhost 27031).
