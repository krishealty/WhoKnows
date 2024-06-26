##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "NetCache-Appliance"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-03-09
]
version "0.1"
description "NetCache is a former web cache software product which was owned and developed by NetApp and sold to Blue Coat Systems."
website "http://www.netapp.com/us/products/netcache.html"

# ShodanHQ results as at 2012-03-09 #
# 141,128 for netcache netapp



# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^NetCache appliance \(NetApp\/([^\)]+)\)$/ },

]

end

