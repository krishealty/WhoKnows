##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "DZCP"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-12-28
]
version "0.1"
description "deV!L`z Clanportal"
website "http://www.dzcp.de"

# Google results as at 2011-02-27 #
# 419 for "2011 by deV!L`z Clanportal"

# Dorks #
dorks [
'"2011 by deV!L`z Clanportal"'
]



# Matches #
matches [

# Default JavaScript
{ :regexp=>/<script language="javascript" type="text\/javascript" src="..\/inc\/_templates_\/[^\/]+\/_js\/dzcp.js"><\/script>/ },

# Copyright HTML Comment
{ :regexp=>/<!--\[ DZCP .{1} by Frank "deV!L" Herrmann - www.dzcp.de \]-->/ },

# Copyright HTML Comment
{ :regexp=>/<!--\[ DZCP .{1} by Frank "deV!L" Herrmann - www.dzcp.de & Patrick "Richy" Richert - www.my-starmedia.de\]-->/ },

]

end


