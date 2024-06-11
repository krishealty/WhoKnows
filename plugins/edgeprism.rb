##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "EdgePrism"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-03-24
]
version "0.1"
description "Edge Prism Content Delivery Network (CDN)"

# ShodanHQ results as at 2012-03-24 #
# 15,549 for EdgePrism -EdgePrismSSL
# 12 for EdgePrismSSL



# Matches #
matches [

# HTTP Server Header # Version Detection
{ :search=>"headers[server]", :version=>/^EdgePrism\/([^\s]+)$/ },

# HTTP Server Header
{ :search=>"headers[server]", :regexp=>/^EdgePrismSSL/ },

]

end

