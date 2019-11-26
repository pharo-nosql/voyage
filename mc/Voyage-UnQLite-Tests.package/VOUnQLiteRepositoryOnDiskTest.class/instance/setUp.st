running
setUp
	| fileReference |

	fileReference := FileLocator imageDirectory / 'test.db'.
	fileReference ensureDelete.
	repository := VOUnQLiteRepository on: fileReference