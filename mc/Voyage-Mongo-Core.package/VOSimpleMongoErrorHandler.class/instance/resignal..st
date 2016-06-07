private
resignal: error

	^ error resignalAs: (VOMongoConnectionError new internalErrors: handledErrorsByTimestamp; yourself)