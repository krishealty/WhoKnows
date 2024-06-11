##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "jetNEXUS-Load-Balancer"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-23
]
version "0.1"
description "jetNEXUS provide leading edge load balancing and traffic management solutions to accelerate application performance and availability, enabling clients to create and deliver resilient and scalable online services."
website "http://www.jetnexus.com/"

# ShodanHQ results as at 2011-05-23 #
# 4 for jetNEXUS: Streaming Compression On



# Passive #
passive do
	m=[]

	# jetNEXUS Header
	m << { :name=>"jetNEXUS Header" } if @headers["jetnexus"] =~ /^Streaming Compression/

	# Return passive matches
	m
end

end

