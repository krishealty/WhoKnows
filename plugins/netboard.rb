##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "netboard"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-04-17
]
version "0.1"
description "netboard forum"

# 70 for inurl:cgi-sys/netboard.cgi ext:cgi

# Dorks #
dorks [
'inurl:cgi-sys/netboard.cgi ext:cgi'
]



# Matches #
matches [

# URL pattern
{ :ghdb=>'inurl:"cgi-sys/netboard.cgi" filetype:cgi' },

# Form tags
{ :text=>'<td><form method=post action="netboard.cgi">' },
{ :text=>'<td><form method=post action=netboard.cgi>' },

]

end


