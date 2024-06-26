##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "FortiWeb"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-14
]
version "0.1"
description "The FortiWeb family of Web application and XML firewalls protect, balance, and accelerate Web applications, databases, and the information exchanged between them."
website "http://www.fortinet.com/products/fortiweb/"

# ShodanHQ results as at 2011-05-14 #
# 985 for FortiWeb



# Matches #
matches [

# HTTP Server Header
{ :search=>"headers[server]", :regexp=>/^FortiWeb$/ },

# Version Detection
{ :search=>"headers[server]", :version=>/^FortiWeb-([\d\.]+)$/ },

]

end

