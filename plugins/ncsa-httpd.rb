##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "NCSA-HTTPd"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-13
  "Andrew Horton", # v0.2 # 2016-04-21 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "NCSA HTTPd"
website "http://web.archive.org/web/20071020024535/hoohoo.ncsa.uiuc.edu/docs/Overview.html"

# ShodanHQ results as at 2011-03-13 #
# 306 for NCSA -apache -IIS -TakaC

matches [
# HTTP Server Header
{ :regexp => /^NCSA/,
  :search=>"headers[server]" },

# Version Detection # HTTP Server Header
{ :version => /^NCSA\/([\d\.]+)$/,
  :search => "headers[server]" },

]

end

