"
Common class for Ubuntu tools
"
Class {
	#name : #UbuntuTools,
	#superclass : #Object,
	#category : #'OS-Linux-Ubuntu-Tools-Base'
}

{ #category : #menu }
UbuntuTools class >> commandLineMenuOn: aBuilder [
	<worldMenu>
	(aBuilder item: #'Terminal')
		parent: #'OS-Ubuntu Tools';
		help: 'Command Line';
		order: 0;
		action: [ self openCommandLineOnWorkingDirectory ];
		icon: (UbuntuToolIcons iconFrom: #terminalIcon);
		withSeparatorAfter
]

{ #category : #menu }
UbuntuTools class >> fileBrowserMenuOn: aBuilder [
	<worldMenu>
	(aBuilder item: #'Nautilus')
		parent: #'OS-Ubuntu Tools';
		help: 'Open Nautilus file browser';
		order: 1;
		action: [ UbuntuShell fileBrowser ];
		icon: (UbuntuToolIcons iconFrom: #nautilusIcon)
]

{ #category : #menu }
UbuntuTools class >> menuCommandOn: aBuilder [
	<worldMenu>
	(aBuilder item: #'OS-Ubuntu Tools')
		parent: #'Tools';
		order: 12;
		help: 'Ubuntu Tools';
		icon: (UbuntuToolIcons iconFrom: #ubuntuIcon);
		withSeparatorAfter
]

{ #category : #utilities }
UbuntuTools class >> openCommandLineOnWorkingDirectory [

	UbuntuShell newTerminal
]

{ #category : #menu }
UbuntuTools class >> systemMonitorMenuOn: aBuilder [
	<worldMenu>
	(aBuilder item: #'System Monitor')
		parent: #'OS-Ubuntu Tools';
		help: 'Open System Monitor';
		order: 1;
		action: [ UbuntuShell systemMonitor ];
		icon: (Smalltalk ui icons iconNamed: #processBrowserIcon);
		withSeparatorAfter
]
