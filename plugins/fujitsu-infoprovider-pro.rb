##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Fujitsu-InfoProvider-Pro"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-02-24
]
version "0.1"
description "Fujitsu-InfoProvider-Pro web server"
website "http://software.fujitsu.com"

# ShodanHQ results as at 2011-02-24 #
# 188 for Fujitsu-InfoProvider-Pro



# Matches #
matches [

# HTTP Server Header
{ :search=>"headers[server]", :regexp=>/Fujitsu-InfoProvider-Pro/ },

# Version Detection
{ :search=>"headers[server]", :version=>/Fujitsu-InfoProvider-Pro\/[V]?([^ ]+) / },

]

end

