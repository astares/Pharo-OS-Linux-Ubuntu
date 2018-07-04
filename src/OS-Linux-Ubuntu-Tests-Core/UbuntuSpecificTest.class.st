"
Subclasses represent tests that only run on Ubuntu operating systems
"
Class {
	#name : #UbuntuSpecificTest,
	#superclass : #TestCase,
	#category : 'OS-Linux-Ubuntu-Tests-Core-Common'
}

{ #category : #testing }
UbuntuSpecificTest class >> isAbstract [
  	"only run test subclasses on Windows"
	
	^(self name = #UbuntuSpecificTest)
		or: [ Smalltalk os isUnix not ]
]
