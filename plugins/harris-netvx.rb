##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Harris-NetVX"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-30
]
version "0.1"
description "NetVX combines standards-compliant audio, video and data networking interfaces to integrate with any video plant"
website "http://www.broadcast.harris.com/productsandsolutions/NetworkingEncoding/NetVX/default.asp"

# ShodanHQ results as at 2011-03-30 #
# 41 for harris.asp



# Matches #
matches [

# Powered by text
{ :text=>'<a href="" onclick=\'window.open("http://www.goahead.com")\' title="Powered by the GoAhead Web Server.">' },

]

# Passive #
passive do
	m=[]

	# Model Detection # Title
	if @headers["server"] =~ /^GoAhead-Webs$/ and @body =~ /<title>([^\s]+) Control<\/title>/
		m << { :model=>@body.scan(/<title>([^\s]+) Control<\/title>/) }
	end

	# Return passive matches
	m
end

end

