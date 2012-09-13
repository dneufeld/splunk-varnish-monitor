# splunk-varnish-monitor

This is the Splunk for Varnish application developed by Dale Neufeld. This
app provides the ability to monitor Varnish servers.

## Usage

###pre-requisites
- splunk (http://www.splunk.com)
- varnish (https://www.varnish-cache.org/)

````
cd $SPLUNK_HOME/etc/apps
git clone https://github.com/dneufeld/splunk-varnish-monitor.git
$SPLUNK_HOME/bin/splunk restart
````

###The application consists of:

A Ruby script to gather data from Varnish as scripted input
Dashboards and macros to enable monitoring and investigation of Varnish
servers

###This applciation has been tested on:

- varnish 3.0.3 

###Data collection script

The data collection script can be found in

`$SPLUNK_HOME/etc/apps/varnishmonitor/bin/`

###Splunk configuration

To configure your Splunk server you should:

- Configure inputs.conf
