##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Essentia-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-06
]
version "0.1"
description "Essentia Web Server - High performance HTTP/1.1 compliant multi-threaded server."



# Passive #
passive do
	m=[]

	# Version Detection # HTTP Server Header
	if @headers["server"] =~ /^Essentia\/([^\s]+)$/
		m << { :version=>"#{$1}" }
	end

	# Return passive matches
	m
end
end

