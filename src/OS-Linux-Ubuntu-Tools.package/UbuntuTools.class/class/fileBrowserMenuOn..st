menu
fileBrowserMenuOn: aBuilder
	<worldMenu> 
	(aBuilder item: #'Nautilus')
		parent: #'OS-Ubuntu Tools';	 
		help: 'Open Nautilus file browser';
		order: 1;
		action: [ UbuntuShell fileBrowser ]; 
		icon: (UbuntuToolIcons iconFrom: #nautilusIcon)  