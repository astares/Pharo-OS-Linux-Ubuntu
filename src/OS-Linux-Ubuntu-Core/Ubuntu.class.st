"
The Ubuntu OS
"
Class {
	#name : #Ubuntu,
	#superclass : #Object,
	#category : 'OS-Linux-Ubuntu-Core-OS'
}

{ #category : #'private - utilities' }
Ubuntu class >> contentsOf: fileName [

	 ^fileName asFileReference readStreamDo: [:s | s upToEnd asString ]
]

{ #category : #accessing }
Ubuntu class >> linuxVersionString [
	
	^self contentsOf: '/proc/version' 
]

{ #category : #primitives }
Ubuntu class >> system: command [
	
	 ^self ffiCall: #(int system(char* command) ) 
			  module: LibC
]

{ #category : #accessing }
Ubuntu class >> ubuntuKernelVersionSignatur [

	^self contentsOf: '/proc/version_signature' 
]
