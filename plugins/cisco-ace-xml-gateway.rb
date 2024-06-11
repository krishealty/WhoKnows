##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Cisco-ACE-XML-Gateway"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-09-21
]
version "0.1"
description "The Cisco ACE XML Gateway is a key component of the Cisco Application Control Engine (ACE) family of products. The ACE XML Gateway delivers an integrated XML firewall."
website "http://www.cisco.com/en/US/products/ps7314/index.html"

# ShodanHQ results as at 2011-09-21 #
# 231 for ACE XML Gateway



# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :regexp=>/^ACE XML Gateway$/ },

]

end

