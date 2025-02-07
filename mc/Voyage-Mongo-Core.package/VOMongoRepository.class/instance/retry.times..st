finalization
retry: aSyncBlock times: anInteger
	"fix for this: https://github.com/pharo-nosql/voyage/issues/190"

	| counter |
	counter := anInteger.
	counter := counter - 1.
	[ aSyncBlock value ]
		on: TKTTimeoutException
		do: [ :ex |
			counter <= 0 ifTrue: [ ex pass ].
			Processor yield.
			500 milliSeconds wait.
			self retry: aSyncBlock times: counter ]