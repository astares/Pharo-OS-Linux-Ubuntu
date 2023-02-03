"
The baseline for OS Linux with Ubuntu support

[https://github.com/astares/Pharo-OS-Linux-Ubuntu](https://github.com/astares/Pharo-OS-Linux-Ubuntu)
"
Class {
	#name : #BaselineOfOSLinuxUbuntu,
	#superclass : #BaselineOf,
	#category : #BaselineOfOSLinuxUbuntu
}

{ #category : #baselines }
BaselineOfOSLinuxUbuntu >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		self osUnix: spec.

		"Packages"
		spec
			package: #'OS-Linux-Ubuntu-Core' with: [
				spec requires: #(#OSUnix ) ];
			package: #'OS-Linux-Ubuntu-Environment' with: [
				spec requires: #(#'OS-Linux-Ubuntu-Core'). ];
			package: 'OS-Linux-Ubuntu-Tools' with: [
				spec requires: #(#'OS-Linux-Ubuntu-Core' #'OS-Linux-Ubuntu-Environment'). ];
			package: #'OS-Linux-Ubuntu-Core-Tests' with: [
				spec requires: #(#'OS-Linux-Ubuntu-Core') ].

		"Groups"
		spec
			group: 'Core' with: #(#'OS-Linux-Ubuntu-Core' #'OS-Linux-Ubuntu-Environment');
			group: 'Tests' with: #(#'OS-Linux-Ubuntu-Core-Tests');
			group: 'Tools' with: #('OS-Linux-Ubuntu-Tools');
			group: 'CI' with: #('Tests');
			group: 'all' with: #('Core' 'Tests' 'Tools');
			group: 'default' with: #('all') ]
]

{ #category : #dependencies }
BaselineOfOSLinuxUbuntu >> osUnix: spec [

	spec
		baseline: 'OSUnix'
		with: [
			spec
				repository: 'github://astares/Pharo-OS-Unix:master/src';
  				loads: 'default' ]
]
