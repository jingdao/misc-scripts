misc-scripts
============
Miscellaneous shell scripts

cipher
------
Encodes and decodes files/directories using openssl

	Usage:
		cipher enc/dec source destination

wik
---
This python script enables the user to query the MediaWiki API through the 
command line. The search returns (in order of preference) :
- a matching page title
- automatic redirect to an existing page
- first result from a Search API query
```
Usage:
	wik media wiki --> one-time search
	wik	--> interactive mode with history
```

google
------
This python script enables the user to query the Google Search API through the 
command line. Only the top 4 results are displayed (title+content)

	Usage:
		google how to use Google Search API --> one-time search
		google	--> interactive mode with history

ddg
---
This python script enables the user to query the DuckDuckGo Search API through the 
command line.

	Usage:
		ddg 1+1 --> one-time search
		ddg	--> interactive mode with history

diskwrite
---------
wrapper around the dd command with progress bar

- parted command is used to determine end of partition
- (avoids copying unused space) 
- /sys/class/block/ folder is used to query block device IO
- /proc/ folder is used to check dd process status

	Usage:
		sudo ./diskwrite source destination

(all the code for drawing the progress bar is from Ian Brown ijbrown@hotmail.com)

mntimg
------
automatically detects and mounts the partitions of a disk image (.img) file

	Usage:
		sudo ./mntimg [-u] source [destination]

monitor
-------

Monitors the cpu and memory usage of processes.
Defaults to the top 10 processes with highest memory usage.
An optional argument may be supplied to filter for process names

	Usage:
		./monitor [process]
