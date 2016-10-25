private
forkImageAndDo: aBlock

	ImageWorker 
		do: aBlock
		within: 5 seconds 
		onTimeout: [ self fail: 'Timeout in forked image (ImageWorker)' ].
