##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "NetBox"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-14
  "Andrew Horton", # v0.2 # 2016-04-21 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "NetBox HTTP server [Chinese]"
website "http://www.netbox.cn/"

# ShodanHQ results as at 2011-03-14 #
# 1,778 for NetBox -realm

matches [
	# HTTP Server Header
	{ :regexp=>/^NetBox/, :search=>"headers[server]" },
	# Version Detection # HTTP Server Header
	{ :version=>/^NetBox Version (.+)$/, :search=>"headers[server]" },

]

end

