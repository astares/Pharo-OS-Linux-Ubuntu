"
SUnit test for Ubuntu platform
"
Class {
	#name : #UbuntuTest,
	#superclass : #UbuntuSpecificTest,
	#category : #'OS-Linux-Ubuntu-Core-Tests-Base'
}

{ #category : #tests }
UbuntuTest >> testLinuxVersionString [

	self assert: Ubuntu linuxVersionString notEmpty
]
