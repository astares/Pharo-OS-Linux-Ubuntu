"
The baseline for OS Linux with Ubuntu support
"
Class {
	#name : #BaselineOfOSLinuxUbuntu,
	#superclass : #BaselineOf,
	#category : #BaselineOfOSLinuxUbuntu
}

{ #category : #baseline }
BaselineOfOSLinuxUbuntu >> baseline: spec [
	<baseline>

	spec for: #'common' do: [		 
		self osUnix: spec.
		spec 
			package: #'OS-Linux-Ubuntu-Core' with: [
				spec requires: #(#OSUnix ). ];
			package: #'OS-Linux-Ubuntu-Environment' with: [
				spec requires: #(#'OS-Linux-Ubuntu-Core' ). ];
			package: 'OS-Linux-Ubuntu-Tools' with: [
				spec requires: #(#'OS-Linux-Ubuntu-Core' #'OS-Linux-Ubuntu-Environment' ). ];
			package: #'OS-Linux-Ubuntu-Tests-Core' with: [
				spec requires: #(#'OS-Linux-Ubuntu-Core' ). ].
		spec 
			group: 'Core' with: #(#'OS-Linux-Ubuntu-Core' #'OS-Linux-Ubuntu-Environment' );
			group: 'Tests' with: #(#'OS-Linux-Ubuntu-Tests-Core' );
			group: 'Tools' with: #('OS-Linux-Ubuntu-Tools' );
			group: 'default' with: #('Core' 'Tests' 'Tools' ). ].

]

{ #category : #baseline }
BaselineOfOSLinuxUbuntu >> osUnix: spec [

	spec 
		baseline: 'OSUnix' 
		with: [ 
			spec
				repository: 'github://astares/Pharo-OS-Unix:pharo6/src';
  				loads: 'default' ]
]
