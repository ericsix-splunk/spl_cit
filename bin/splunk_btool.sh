#!/bin/bash
# This pulls active btool configuration info since we cant always get it internally..
# Mainly this uses btool to pull authentication, saml, and role mapping stanzas
# from the active Splunk configs
# 6@splunk.com ---- 

# Define some executables...
datecmd=`which date`
dateformat=$($datecmd +"%Y-%m-%d %T %Z")
splunkcmd=/opt/splunk/bin/splunk
splunkversion=`$splunkcmd version`

# Define some FUNctions
function authentication {
echo "================================"
echo "Authentication Configuration "
$splunkcmd btool authentication list authentication --debug-print=app
echo "================================"
}

function saml {
echo "================================"
echo "Authentication Configuration - SAML"
$splunkcmd btool authentication list saml --debug-print=app
echo "================================"
}

function rolemap {
echo "================================"
echo "Authentication Configuration - Role Mapping"
$splunkcmd btool authentication list rolemap --debug-print=app
echo "================================"
}

function inputs {
echo "================================"
echo "Inputs Configuration "
$splunkcmd btool inputs list --debug-print=app
echo "================================"
}

function outputs {
echo "================================"
echo "Outputs Configuration "
$splunkcmd btool outputs list --debug-print=app
echo "================================"
}

function server {
echo "================================"
echo "Server Configuration "
$splunkcmd btool server list --debug-print=app
echo "================================"
}

function web {
echo "================================"
echo "Inputs Configuration "
$splunkcmd btool web list --debug-print=app
echo "================================"
}

function limits {
echo "================================"
echo "Inputs Configuration "
$splunkcmd btool limits list --debug-print=app
echo "================================"
}

function app {
echo "================================"
echo "App Configuration "
$splunkcmd btool app list --debug-print=app
echo "================================"
}

function indexes {
echo "================================"
echo "Indexes Configuration "
$splunkcmd btool indexes list --debug-print=app
echo "================================"
}





function timestamp {
echo "Timestamp = $dateformat"
}

function SplunkVersion {
echo "SplunkVersion = \"$splunkversion\""
}

# lets get to work
timestamp
$1 
