private
nextCount
	"start"
	count 	ifNil: [ count := 1 ].
	count := count + 1.
	"restart on overflow"
	count >= 16rFFFFFF 
		ifTrue: [ count := 1 ].
	^ count