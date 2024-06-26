##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "MacHTTP"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-04
  "Andrew Horton", # v0.2 # 2016-04-21 # Moved patterns from passive function to matches[]. added website parameter. 
]
version "0.2"
description "MacHTTP is a webserver designed to run on Mac OS versions 7.x through 9.x. It was written by software developer Chuck Shotton and was originally shareware; it is now available in source code form from SourceForge.net under the Perl Artistic License. It is still used on some older Macintosh hardware. It was later commercialized as WebSTAR, sold originally by StarNine and later bought by Quarterdeck Software. - More Info: http://en.wikipedia.org/wiki/MacHTTP"
website "http://www.machttp.org/downloads/machttp/"

# ShodanHQ results as at 2011-06-04 #
# 40 for machttp

matches [
	# Version Detection # HTTP Server Header
	{ :version=>/^MacHTTP\/([^\s]+)$/, :search=>"headers[server]" },

	# HTTP Server Header
	{ :regexp=>/^MacHTTP$/, :search=>"headers[server]" },

]

end

