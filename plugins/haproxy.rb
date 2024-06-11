##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "HAProxy"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2013-02-27
]
version "0.1"
description "Reliable, High Performance TCP/HTTP Load Balancer"
website "http://haproxy.1wt.eu/"

# ShodanHQ results #
# 9,975 for HAProxy statistics



# Matches #
matches [

# WWW-Authenticate: Basic realm="HAProxy Statistics"
{ :status=>401, :search=>"headers[www-authenticate]", :text=>'Basic realm="HAProxy Statistics"' },

]

end

