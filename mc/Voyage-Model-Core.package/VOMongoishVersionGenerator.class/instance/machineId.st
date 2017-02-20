private
machineId
	^ machineId ifNil: [ machineId := self toByteArray: self generateMachineId size: 3 ]