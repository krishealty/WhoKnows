##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "HTTP-Headers"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-23
]
version "0.1"
description "This plugin extracts the HTTP headers for plugin development purposes. - More info: http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol"



# Passive #
passive do
	m=[]

	# Extract Headers
	unless @headers.nil?
		@headers.each do|h,v|
			m << { :string=>h.to_s+': '+v.to_s }
		end
	end

	# Return passive matches
	m
end

end

