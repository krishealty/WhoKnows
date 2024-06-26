##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Day-Communique"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-04
  "Andrew Horton", # v0.2 # 2016-04-19 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "Day Communique (CQ5) WCM is a web content management system based on CRX for the content repository and Apache Sling as a web framework. Day Content Repository Extreme (Day CRX) is a content repository that implements the content repository API for Java (JSR-170). It is based on the open source reference implementation Apache Jackrabbit and serves as the foundation of all other products by Day Software."
website "http://www.day.com/"
# More Info: http://en.wikipedia.org/wiki/Day_Software

# ShodanHQ results as at 2011-06-04 #
# 246 for Communique

matches [
	# HTTP Server
	{ :search=>"headers[server]", :regexp=>/^Communique/ },

	# Version Detection
	{ :search=>"headers[server]", :version=>/Communique\/([^\s]+ \([^\)]+\))/ },

	{ :search=>"headers[server]", :version=>/Communique\/([^\s]+)/ },

]


end

