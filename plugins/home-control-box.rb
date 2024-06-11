##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Home-Control-Box"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-23
  "Andrew Horton", # v0.2 # 2016-04-20 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "The Home Control Box is a small, powerful computer that integrates the various sensors and electronic systems in the home into one single functional system."
website "http://www.homecontrolbox.com/"
# The username is the same as the name of your Home Control Box without 'hcb-', so hcb-xxx-yyyy becomes yyy-xxxx

# ShodanHQ results as at 2011-05-23 #
# 15 for hcb_web
# 15 for BoxTalk
# Most results are from Netherlands

matches [

	{ :regexp=>/^hcb_web/, :search=>"headers[server]" },

	# Version Detection
	{ :version=>/^hcb_web\/v([^\s]+) BoxTalk\/[^\s]+ SWILL\/[^\s]+ \([^\)]+\)$/, :search=>"headers[server]" },

	# BoxTalk Detection
	{ :module=>/^hcb_web\/v[^\s]+ (BoxTalk\/[^\s]+) SWILL\/[^\s]+ \([^\)]+\)$/, :search=>"headers[server]" },

	# SWILL Detection
	{ :module=>/^hcb_web\/v[^\s]+ BoxTalk\/[^\s]+ (SWILL\/[^\s]+) \([^\)]+\)$/, :search=>"headers[server]" },

	# Username Detection # WWW-Authenticate header
	{ :account=>/^Basic realm="Home Control Box Configuration \(hcb-([a-z]{3}-[\d]{4})\)"$/, :search=>"headers[www-authenticate]" },
	
	# No Login Required
	{ :string=>"No Login Required", :text=>'<frame frameborder="0" name="MGUI" src="myhcb_gui.html" scrolling="no"' },

]

end

# An aggressive plugin could get the device uptime, country, firmware version and owner's address from /config/general.pl if the device does not require authentication

