##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Enhydra-Application-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-03-20
]
version "0.1"
description "Enhydra Application Server"
website "http://enhydra.org/"

# More Info #
# https://en.wikipedia.org/wiki/Enhydra_Server

# ShodanHQ results as at 2012-03-20 #
# 75 for Enhydra Application Server
# 64 for Enhydra-MultiServer



# Matches #
matches [

# HTTP Server Header # Version Detection
{ :search=>"headers[server]", :version=>/^Enhydra-MultiServer\/([^\s]+)/ },

# Servlet-Engine # Version Detection
{ :search=>"headers[servlet-engine]", :version=>/Enhydra Application Server\/([^\s]+)/ },

]

end

