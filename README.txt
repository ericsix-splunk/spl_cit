==================================================================

	App Name : Splunk Configuration Ingestion Tool (Spl'CIT)
	Version : 1.0
	Author : ( cloud-adoption@splunk.com ) { Eric Six }
	Purpose : Collect Btool output to an index for validation /
		  Configuration management
	
	Requiremests : 
		Index Required : True, index named "customer_btool"
		Source Types :  Multiple Sourcetypes created
			splunk:config:btool:saml  	- Saml Configurations
			splunk:config:btool:authentication - Authentication Configurations
			splunk:config:btool:rolemap	- Role Mappings
			splunk:config:btool:version   	- Current Splunk Version
			splunk:config:btool:outputs 	- Current outputs
			splunk:config:btool:inputs	- Current inputs
			splunk:config:btool:limits	- Current Limits
			splunk:config:btool:server	- Current Server
			splunk:config:btool:web		- Current Web
			splunk:config:btool:indexes	- Current Indexes
			splunk:config:btool:app		- Current App
