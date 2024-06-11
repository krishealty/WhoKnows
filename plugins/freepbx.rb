##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "FreePBX"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-12
]
version "0.1"
description "FreePBX is an easy to use web based GUI (graphical user interface) that controls and manages Asterisk"
website "http://www.freepbx.org/"

# ShodanHQ results as at 2011-06-12 #
# 10 for FreePBX http



# Passive #
passive do
	m=[]

	# WWW-Authenticate realm
	if @headers["www-authenticate"] =~ /FreePBX/
		m << { :name=>"WWW-Authenticate" } if @headers["www-authenticate"] =~ /^Basic realm="FreePBX( Admin| Administration)?"/
		m << { :name=>"WWW-Authenticate" } if @headers["www-authenticate"] =~ /^Digest realm="FreePBX"/
	end

	# Return passive matches
	m
end

end

