##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Ben-SSL"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-02-08
  "Andrew Horton", # v0.2 # 2016-04-19 # Replaced passive function with match. 
]
version "0.2"
description "Apache-SSL was developed by Ben Laurie and is often referred to as Ben-SSL"
website "http://apache-ssl.org/"

# ShodanHQ results as at 2011-02-08 #
# 34777 for Ben-SSL

matches [
 { :version=>/Ben-SSL\/([\d\.]+)/, :search=>"headers[server]" }
]


end

