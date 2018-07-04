baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [		 
		spec project: 'OSUnix' with: [
				spec
					loads: #'all';
					repository: 'github://astares/Pharo-OS-Unix:master/src' ].
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
