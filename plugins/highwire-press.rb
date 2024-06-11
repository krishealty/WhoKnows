##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "HighWire-Press"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-09-21
]
version "0.1"
description "HighWire Press hosting"
website "http://highwire.stanford.edu/about/"

# ShodanHQ results as at 2011-09-21 #
# 1,886 for X-Highwire
#   302 for X-Firenze



# Matches #
matches [

# HTTP Headers
{ :search=>"headers[x-firenze-processing-time]", :regexp=>/^[\d\.]+$/ },
{ :search=>"headers[x-firenze-processing-tims]", :regexp=>/^detect-robot:/ },
{ :search=>"headers[x-highwire-sessionid]", :regexp=>/^.+$/ },

]

end

