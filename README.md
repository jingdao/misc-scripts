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

	Usage:
		wik media wiki --> one-time search
		wik	--> interactive mode with history

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
