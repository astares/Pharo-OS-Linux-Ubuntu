Extension { #name : #UnixPlatform }

{ #category : #'*OS-Linux-Ubuntu-Core' }
UnixPlatform >> isElementaryOS [
	"Return true for Elementary OS distribution"
	
	^self isLinuxDistributionWithID: 'elementary'
	

]

{ #category : #'*OS-Linux-Ubuntu-Core' }
UnixPlatform >> isUbuntu [
	"Return true for ubuntu distribution"
	
	^self isLinuxDistributionWithID: 'ubuntu'
	

]
