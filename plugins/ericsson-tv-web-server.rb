##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Ericsson-TV-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-30
]
version "0.1"
description "Ericsson Integrated Receiver Decoders - web interface"
website "http://www.ericsson.com/ourportfolio/products/integrated-receiver-decoders?nav=fgb_101_348|fgb_101_749"

# ShodanHQ results as at 2011-05-30 #
# 5 for Ericsson Television Web server



# Matches #
matches [

# HTTP Server Header
{ :search=>"headers[server ]", :regexp=>/^Ericsson Television Web server$/ },

]

end

