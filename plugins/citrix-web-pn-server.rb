##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Citrix-Web-PN-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-13
]
version "0.1"
description "Citrix Web PN Server - http://www.citrix.com"

# ShodanHQ results as at 2011-08-13 #
# 5,716 for Citrix Web PN Server



# Matches #
matches [

# Server Header
{ :search=>"headers[server]", :regexp=>/^Citrix Web PN Server$/ },

]

end

