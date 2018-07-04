testing
isAbstract
  	"only run test subclasses on Windows"
	
	^(self name = #UbuntuSpecificTest)
		or: [ Smalltalk os isUnix not ]