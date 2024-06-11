##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "BadBlue"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-04-20
  "Andrew Horton", # v0.2 # 2016-04-19 # Replaced passive function with match. 
]
version "0.2"
description "A free, very small Windows web server for sharing, publishing and serving files."
website "http://www.badblue.com/"

# Google results as at 2011-04-20 #
# 12 for intitle:"BadBlue: the file-sharing web server anyone can use" -intitle

# ShodanHQ results as at 2011-04-20 #
# 18 for BadBlue

# Dorks #
dorks [
'intitle:"BadBlue: the file-sharing web server anyone can use" -intitle'
]

matches [
	{ :version=>/^BadBlue\/([\d\.]+)$/, :search=>"headers[server]" } 
]

end


