##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Abyss-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-04-08
  "Andrew Horton", # v0.2 # 2016-04-18 # Replaced passive function with match. 
]
version "0.2"
description "Abyss Web Server is a compact web server available for Windows, Mac OS X, Linux, and FreeBSD operating systems."
website "http://www.aprelium.com/abyssws/"

# ShodanHQ results as at 2011-04-08 #
# 4,097 for Abyss

matches [
	{ :version=>/^Abyss\/([^\s]+)/, :search=>"headers[server]" } 
]

end

