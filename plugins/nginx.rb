##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "nginx"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-13
]
version "0.1"
description "Nginx (Engine-X) is a free, open-source, high-performance HTTP server and reverse proxy, as well as an IMAP/POP3 proxy server."
website "http://nginx.net/"

# ShodanHQ results as at 2011-03-13 #
# 289,545 for nginx



# Matches #
matches [

# HTTP Server Header
{ :search=>"headers[server]", :regexp=>/^nginx$/ },

# Version Detection
{ :search=>"headers[server]", :version=>/^nginx\/([^\s]+).*$/ },

]

end

