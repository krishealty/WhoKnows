##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "NetBotz-Network-Monitoring-Device"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-07-20
  # v0.2 # 2011-02-24 # Updated version detection. Added WWW-Authenticate match. 
]
version "0.2"
description "NetBotz monitoring and management web front end"
website "http://www.netbotz.com/products/index.html"

# Google results as at 2010-07-20 #
# 12 for intitle:"Device Status Summary Page" -demo
# 21 for intitle:"netbotz appliance" -inurl:.php -inurl:.asp -inurl:.pdf -inurl:securitypipeline -announces

# Dorks #
dorks [
'intitle:"netbotz appliance" -inurl:.php -inurl:.asp -inurl:.pdf -inurl:securitypipeline -announces'
]




# Matches #
matches [

# Default Title
{ :regexp=>/<TITLE>NetBotz( Network Monitoring) Appliance - [^<]*<\/TITLE>/ },

# Default CSS HTML
{ :text=>'<LINK REL="StyleSheet" TYPE="text/css" HREF="/netbotz.css">' },

# Applet Launch Page # Default HTML Comment
{ :text=>'<!-- Launch the NetBotz Applications.  This will require Java 1.3.0 OR ANYTHING NEWER -->' },

# Logo Frame # Default logo HTML
{ :text=>'<a href="http://www.netbotz.com" target="_top"><img border="0" src="/colorlogo.gif"></a>' },

# Status Page # Default Title
{ :text=>'	<TITLE>Device Status Summary Page</TITLE>' },

# Version Detection # statusHeader.html
{ :url=>"/statusHeader.html", :version=>/<a href="http:\/\/updates.netbotz.com\/releases\/([\d\.]+)\/install.html" target="_instAV">\(Install Advanced View Application\)<\/a>/ },

]

# Passive #
passive do
	m=[]

	# HTTP WWW Authenticate header
	m << { :name=>'HTTP WWW Authenticate header' } if @headers['www-authenticate'] =~ /NetBotz Appliance/

	# Return Passive Matches
	m
end

end

