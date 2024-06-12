##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "nopCommerce"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", # 2016-08-19
  "Andrew Horton", # v0.2 # 2017-11-27 # Add website and description.. 
]
version "0.2"
description "nopCommerce is an ASP.NET based open-source ecommerce solution "
website "https://www.nopcommerce.com/"

# Matches #
matches [

	# Cookie 
	{ :search => "headers[set-cookie]", :regexp => /^Nop.customer/, :name=>"Nop.customer cookie" },
	
] 

end
