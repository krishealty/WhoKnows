##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Huawei-Quidway-Switch"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-07
]
version "0.1"
description "Huawei network switch - Quidway series"
website "http://www.huawei.com/products/datacomm/catalog.do?id=16"

# ShodanHQ results as at 2011-08-07 #
# 103,440 for Lanswitch
# 103,166 for Lanswitch HttpServer



# Passive #
passive do
	m=[]

	# Version Detection # HTTP Server Header
	if @headers["server"] =~ /^Lanswitch - V([\d]{3})R([\d]{3}) HttpServer [\d\.]+$/
		m << { :version=>"#{$1}r#{$2}" }
	end

	# Return passive matches
	m
end
end

