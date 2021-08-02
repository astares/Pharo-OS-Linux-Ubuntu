"
Access to the Ubuntu Shell
"
Class {
	#name : #UbuntuShell,
	#superclass : #Object,
	#category : 'OS-Linux-Ubuntu-Environment-Shell'
}

{ #category : #examples }
UbuntuShell class >> exampleBrowser [

	self shellBrowse: 'http://www.pharo.org'
]

{ #category : #utilities }
UbuntuShell class >> fileBrowser [
	<script>
	
	self shellOpen: FileSystem workingDirectory fullName
]

{ #category : #utilities }
UbuntuShell class >> newTerminal [
	<script>
	(Delay forMilliseconds: 1000) wait.  
	
	Smalltalk os isElementaryOS ifTrue: [ ^Ubuntu system: 'io.elementary.terminal' ]. 
	^(Ubuntu system: 'gnome-terminal &')
	
 
]

{ #category : #accessing }
UbuntuShell class >> shellBrowse: url [

	 ^Ubuntu system: 'sensible-browser ',url,' &'
]

{ #category : #accessing }
UbuntuShell class >> shellOpen: aDirectoryName [
	"
	self shellOpen: '/home'
	
	"
	|cmd|
	cmd := 'nautilus'.
	Smalltalk os isElementaryOS ifTrue: [ cmd := 'io.elementary.files' ]. 
	^Ubuntu system: cmd,' "', aDirectoryName,'" &'
]

{ #category : #utilities }
UbuntuShell class >> systemMonitor [
	<script>
	
	(Ubuntu system: 'gnome-system-monitor &')
	
 
]
