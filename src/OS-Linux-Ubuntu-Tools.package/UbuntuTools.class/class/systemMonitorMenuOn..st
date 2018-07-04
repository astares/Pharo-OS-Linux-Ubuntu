menu
systemMonitorMenuOn: aBuilder
	<worldMenu> 
	(aBuilder item: #'System Monitor')
		parent: #'OS-Ubuntu Tools';	 
		help: 'Open System Monitor';
		order: 1;
		action: [ UbuntuShell systemMonitor ]; 
		icon: (Smalltalk ui icons iconNamed: #processBrowserIcon);
		withSeparatorAfter