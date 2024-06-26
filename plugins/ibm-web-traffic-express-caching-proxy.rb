##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "IBM-Web-Traffic-Express-Caching-Proxy"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-08-12
]
version "0.1"
description "IBM Web Traffic Express - proxy, caching and filtering"
website "http://www.software.ibm.com/webservers/wte/"

# ShodanHQ results as at 2012-08-12 #
# 755 for IBM-PROXY-WTE



# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^IBM-PROXY-WTE\/([^\s]+)/ },

# /admin-bin/webexec/wte.html # Hostname Detection
{ :url=>"/admin-bin/webexec/wte.html", :string=>/<a href="https?:\/\/([^\/^"]+)(:\d+)?\/"><img src="https?:\/\/([^\/^"]+)(:\d+)?\/Docs\/docmast\.gif" alt="Caching Proxy Version ([^"]+)"><\/a>/ },

# /admin-bin/webexec/wte.html # Version Detection
{ :url=>"/admin-bin/webexec/wte.html", :version=>/<a href="https?:\/\/([^\/^"]+)(:\d+)?\/"><img src="https?:\/\/([^\/^"]+)(:\d+)?\/Docs\/docmast\.gif" alt="Caching Proxy Version ([^"]+)"><\/a>/, :offset=>4 },

]

end

