##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Gordano-Messaging-Suite"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-20
]
version "0.1"
description "Gordano WebMail Server web interface"
website "http://gordano.com/products/webmail.htm"

# ShodanHQ results as at 2011-08-20 #
# 1,344 for Gordano Messaging Suite
#    18 for Gordano -Messaging



# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^Gordano (Messaging Suite )?Web Server v([^\s]+)$/, :offset=>1 },

]

end

