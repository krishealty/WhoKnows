##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "FreeNAC"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-05-20
]
version "0.1"
description "FreeNAC is an OpenSource solution for LAN access control and dynamic Vlan management"
website "http://freenac.net/"

# Google results as at 2012-05-20 #
# 1 for inurl:"stats.php?graphtype=bar"



# Matches #
matches [

# Menu HTML
{ :text=>'<a href="unknowns.php" title="List unknown end devices and print/edit/delete them">Find unknowns</a><br/>' },

]

end

