private
forkImageAndDo: aBlock

	ImageWorker 
		do: [ aBlock value. nil "we do not need to serialize/materialize the result" ]
		within: 10 seconds 
		onTimeout: [ self fail: 'Timeout in forked image (ImageWorker)' ].
