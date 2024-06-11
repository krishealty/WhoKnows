##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Intrinsyc-deviceWEB"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2013-07-28
]
version "0.1"
description "Intrinsyc deviceWEB - a web server specialized for embedded devices"
website "http://www.intrinsyc.com/"

# ShodanHQ results # 2013-07-28
# 82 for Intrinsyc deviceWEB


# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^Intrinsyc deviceWEB v([\d\.]+)$/ },

]

end

