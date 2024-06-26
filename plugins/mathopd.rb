##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Mathopd"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-30
  "Andrew Horton", # v0.2 # 2016-04-21 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "Mathopd is a very small, yet very fast HTTP server for UN*X systems. It supports useful features of HTTP/1.1, such as persistent connections, partial responses and pipelining. It does not support things like content negotation. The latest version of the software (1.5) also supports CGI/1.1."
website "http://www.mathopd.org/"

# ShodanHQ results as at 2011-03-30 #
# 8,170 for Mathopd

matches [
	# Version Detection # HTTP Server Header
	{ :version=>/^Mathopd\/([^\s]+)/, :search=>"headers[server]" },
	
	# HTTP Server Header
	{ :regexp=>/^Mathopd/, :search=>"headers[server]" },

]


end

