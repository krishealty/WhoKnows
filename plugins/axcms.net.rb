##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "AxCMS_net"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-04
]
version "0.1"
description "AxCMS.net - the free ASP.NET CMS by Axinom"
website "http://en.axcms.net/"

# Google results as at 2011-03-04 #
# 59 for "powered by axcms"

# ShodanHQ results as at 2011-03-04 #
# 8 for X-Powered-By: AxCMS.net

# Dorks #
dorks [
'"powered by axcms"'
]



# Matches #
matches [

# Powered by logo HTML
{ :text=>'<div style="text-align:center;width:100%;"><a href="http://axcms.net" target="_blank"><img src="http://axcms.net/upload/poweredby_150x25_13871.png" height="25" width="150" alt="Powered by AxCMS.net" style="height:25px;width:150px;border-width:0px;" /></a></div></form>' },

# Version Detection # Meta Generator
{ :version=>/<meta name="GENERATOR" content="AxCMS.net ver([\d\.]{1,15})">/ },
{ :version=>/<meta name="GENERATOR" content="AxCMS.net ([\d\.]{1,15})" \/>/ },

# Version Detection # HTML Comment
{ :version=>/<!-- Generated by AxCMS.net ([\d\.]{1,15}) -->/ },

# HTML Comment
{ :text=>'<!-- Build and published by AxCMS.net | powered by Axinom-->' },

]

# Passive #
passive do
	m=[]

	# X-Powered-By: AxCMS.net
	m << { :version=>@headers['x-powered-by'].scan(/AxCMS.net ([\d\.]+)/)[0] } if @headers['x-powered-by'] =~ /AxCMS.net ([\d\.]+)/

	# Return passive matches
	m
end

end


