##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "AdSubtract"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-06
  "Andrew Horton", # v0.2 # 2016-04-18 # Replaced passive function with match for server header. 
]
version "0.2"
description "AdSubtract - a Windows proxy which removes popup ads."
website "http://AdSubtract.com"

# ShodanHQ results as at 2011-06-06 #
# 65 for AdSubtract

matches [
	# Version Detection # HTTP Server Header
	{ :version=>/^AdSubtract ([\d\.]+)$/, :search=>"headers[server]" }
]

end

