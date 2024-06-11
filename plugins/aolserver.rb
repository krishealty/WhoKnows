##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "AOLserver"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-04
]
version "0.1"
description "AOLserver is America Online's Open-Source web server. AOLserver is the backbone of the largest and busiest production environments in the world. AOLserver is a multithreaded, Tcl-enabled web server used for large scale, dynamic web sites."
website "http://www.aolserver.com/"
# Source: http://aolserver.github.com/

# ShodanHQ results as at 2011-06-04 #
# 34,038 for aolserver



# Matches #
matches [

# HTTP Server Header
{ :search=>"headers[server]", :regexp=>/^AOLserver$/ },

# Version Detection
{ :search=>"headers[server]", :version=>/^AOLserver\/([^\s]+)/ },

]

end

