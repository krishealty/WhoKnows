##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Microsoft-HTTPAPI"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-13
  "Andrew Horton", # v0.2 # 2016-04-21 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "The HTTP Server API enables applications to communicate over HTTP without using Microsoft Internet Information Server (IIS). Applications can register to receive HTTP requests for particular URLs, receive HTTP requests, and send HTTP responses. The HTTP Server API includes SSL support so that applications can exchange data over secure HTTP connections without IIS. It is also designed to work with I/O completion ports."
website "http://msdn.microsoft.com/en-us/library/aa364510%28v=vs.85%29.aspx"

# ShodanHQ results as at 2011-03-13 #
# 148,635 for Microsoft-HTTPAPI

matches [

	# HTTP Server Header
	{ :regexp=>/Microsoft-HTTPAPI/, :search=>"headers[server]" },
	# Version Detection # HTTP Server Header
	{ :version=>/Microsoft-HTTPAPI\/(.+)$/, :search=>"headers[server]" },

]

end

