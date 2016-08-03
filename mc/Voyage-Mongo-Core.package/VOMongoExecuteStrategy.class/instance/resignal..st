private
resignal: error

	^ error resignalAs: (VOMongoConnectionError newWithInternalErrorsByTimestamp: handledErrorsByTimestamp)