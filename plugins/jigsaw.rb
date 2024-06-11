##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Jigsaw"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-07
  "Andrew Horton", # v0.2 # 2016-04-20 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "Jigsaw is W3C's leading-edge Web server platform, providing a sample HTTP 1.1 implementation and a variety of other features on top of an advanced architecture implemented in Java."
website "http://www.w3.org/Jigsaw/"

# ShodanHQ results as at 2011-06-07 #
# 79 for Jigsaw

matches [

	{ :regexp=>/^Jigsaw/, :search=>"headers[server]" },
	{ :version=>/^Jigsaw\/([^\s]+)$/, :search=>"headers[server]" },
	
]

end

