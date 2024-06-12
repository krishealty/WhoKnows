##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Mirapoint-Email-Appliance"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-04
]
version "0.1"
description "Mirapoint Email Appliance is a Unix-like standards-compliant black-box e-mail server, with built-in anti-spam, anti-virus, webmail, POP, IMAP, calendar, and LDAP routing options available. System configuration and maintenance is done through a web interface, or through SSH or telnet access to a command line interpreter (CLI). Full access to the Unix-like Messaging Operating System (MOS) is not available. Depending on the model and configuration the appliances can be used as email routers, user mail servers, or as an all-in-one server."
website "http://www.mirapoint.com/index.php?id=products"

# More Info #
# http://en.wikipedia.org/wiki/Mirapoint_Email_Appliance
# http://www.mirapoint.com/index.php?id=ds_wp

# ShodanHQ results as at 2011-08-04 #
# 686 for Mirapoint



# Passive #
passive do
	m=[]

	# HTTP Server Header
	if @headers["server"] =~ /^Mirapoint/

		m << { :name=>"HTTP Server Header" }

		# Version Detection
		if @headers["server"] =~ /^Mirapoint\/([^\s]+)$/
			m << { :version=>"#{$1}" }
		end
	end

	# Return passive matches
	m
end
end

