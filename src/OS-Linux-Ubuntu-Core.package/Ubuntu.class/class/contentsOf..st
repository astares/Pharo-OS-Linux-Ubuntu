private - utilities
contentsOf: fileName

	 ^fileName asFileReference readStreamDo: [:s | s upToEnd asString ]