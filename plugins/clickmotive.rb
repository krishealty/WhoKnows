###
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
#
##
Plugin.define do
name "ClickMotive"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", # 2016-08-19
]
version "0.1"
description "ClickMotive CMS"
website "http://example.com/"

# Matches #
matches [

	# Cookie 
	{ :search => "headers[set-cookie]", :regexp => /ddcaffinitygroup/, :name=>"ddcaffinitygroup cookie" },
	{ :search => "headers[set-cookie]", :regexp => /ddcpoolid/, :name=>"ddcpoolid cookie" },
	
] 

end
