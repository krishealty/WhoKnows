##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "KeyFocus-WebServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-04-08
]
version "0.1"
description "KeyFocus Web Server is a free HTTP Server that can host an unlimited number of web sites."
website "http://www.keyfocus.net/kfws/"

# ShodanHQ results as at 2011-04-08 #
# 753 for KFWebServer



# Matches #
matches [

# HTTP Server Header
{ :search=>"headers[server]", :regexp=>/^KFWebServer$/ },

# Version Detection
{ :search=>"headers[server]", :version=>/^KFWebServer\/([\d\.]+)/ },

]

end

