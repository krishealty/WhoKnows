##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "fnord"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-31
  "Andrew Horton", # v0.2 # 2016-04-20 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "fnord - yet another small httpd"
website "http://www.fefe.de/fnord/"

# ShodanHQ results as at 2011-05-31 #
# 6,444 for fnord


matches [
	# Version Detection # HTTP Server Header
	{ :version=>/^fnord\/([^\s]+)$/, :search=>"headers[server]" },
	{ :regexp=>/^fnord/, :search=>"headers[server]" },
]

end

