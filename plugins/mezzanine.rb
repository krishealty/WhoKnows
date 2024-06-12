##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Mezzanine"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", # 2016-08-19
  "Andrew Horton", # v0.2 # 2017-11-27 # Add website, description.
]
version "0.2"
description "Mezzanine is a CMS built using Django."
website "http://mezzanine.jupo.org/"

# Matches #
matches [

	# Cookie 
	{ :regexp => /mezzanine_login_interface/, :name=>"Admin Login Page " },
	
] 

end
