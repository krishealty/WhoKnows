##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Blazix"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-06
  "Andrew Horton", # v0.2 # 2016-04-19 # Replaced passive function with match. 
]
version "0.2"
description "Blazix is a high-performance full-featured Java application server. Blazix can be used as an Application Server or as a full Web Server."
website "http://www.blazix.com/"

# ShodanHQ results as at 2011-06-06 #
# 14 for Blazix

matches [

	{ :version=>/^Blazix Java Server ([^\s]+)$/, :search=>"headers[server]" },
]

end

