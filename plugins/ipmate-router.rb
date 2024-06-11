##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "IPMATE-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-07
]
version "0.1"
description "IPMATE router [Japanese] - http://www.ntt-east.co.jp/"

# ShodanHQ results as at 2011-03-07 #
# 1 for IPMATE



# Matches #
matches [

# Default title
{ :text=>'<TITLE>Welcome to IPMATE</TITLE>' },

# Logo
{ :url=>"/images/ipmate_logo.gif", :md5=>"8d16375ac9c6c0fc1c27c0183dfda573" },

]

# Passive #
passive do
	m=[]

	# HTTP Server Header
	m << { :model=>"1300RD" } if @headers["server"] =~ /^IPMATE 1300RD$/

	# Return passive matches
	m
end

end


