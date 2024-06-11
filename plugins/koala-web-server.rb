##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Koala-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-11-23
]
version "0.1"
description "Koala is an HTTP server written in Dylan programming language."
website "http://wiki.opendylan.org/wiki/view.dsp?title=Koala"

# ShodanHQ results as at 2011-11-23 #
# 17 for Koala Web Server



# Matches #
matches [

# HTTP Header # Server
{ :search=>"headers[server]", :regexp=>/^Koala Web Server/ },

# HTTP Header # Server # Version Detection
{ :search=>"headers[server]", :version=>/^Koala Web Server\/([^\s]+)/ },

]

end

