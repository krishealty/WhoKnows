##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Calypso-ION-8r-Device"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-11-16
]
version "0.1"
description "The ION-8r is a networked device controller with 8 individual contact relays and a single RS-232 port. Like all Calypso controllers, the ION-8r uses an on-board event database to speed and ease control logic definition, with little training and no code-writing. - Homepage [offline]: http://www.calypsosystems.com/"



# Matches #
matches [

# Title
{ :certainty=>75, :text=>'<title>Calypso ION-8r Device</title>' },

# Menu option
{ :text=>'<li><a href="/A/cfg/entercmd.stm">Enter Command</a></li>' },

# WWW-Authenticate
{ :search=>"headers[www-authenticate]", :text=>"Calypso ION8r Device" },

]

end

