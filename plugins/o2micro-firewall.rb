##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "O2Micro-Firewall"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-18
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "SifoWorks is a multi-function security gateway system that is based on O2Micro's powerful ASIC design. Apart from its firewall capabilities, SifoWorks is also equipped with several industry-leading security features such as: activating NAT and policy routing concurrently while maintaining line speed processing capability; effective log system; powerful network security mechanism, protection against ARP attacks, content filtering, IDP, DoS / DDoS protection, P2P / IM control, etc."
website "http://www.o2security.com/product/productclass.php?classfiy_sn=73"

# ShodanHQ results as at 2011-03-18 #
# 95 for CGISESSID 01010011111100000000111110010011
# 41 for O2micro 01010011111100000000111110010011
# 54 for Firewall/2.3.33
# 54 for Firewall 01010011111100000000111110010011
# 54 for Firewall CGISESSID

matches [
	
	# HTTP Server Header
	{ :regexp=>/^O2micro/, :search=>"headers[server]" },

	# Version Detection # HTTP Server Header
	{ :version=>/^(O2micro|Firewall)\/([\d\.]+)/, :offset=>1, :search=>"headers[server]" },

]

# Passive #
passive do
	m=[]

	# HTTP Server Header and Cookie
	if @headers["set-cookie"] =~ /^CGISESSID=01010011111100000000111110010011;/ and @headers["server"] =~ /^(O2micro|Firewall)/
		m << { :name=>"HTTP Server Header and Cookie" }
	end

	# Return passive matches
	m
end

end

