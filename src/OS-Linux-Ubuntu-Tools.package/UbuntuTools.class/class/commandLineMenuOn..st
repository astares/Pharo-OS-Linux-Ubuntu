menu
commandLineMenuOn: aBuilder
	<worldMenu> 
	(aBuilder item: #'Terminal')
		parent: #'OS-Ubuntu Tools';	 
		help: 'Command Line';
		order: 0;
		action: [ self openCommandLineOnWorkingDirectory ]; 
		icon: (UbuntuToolIcons iconFrom: #terminalIcon);
		withSeparatorAfter