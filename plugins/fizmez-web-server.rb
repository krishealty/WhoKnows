##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Fizmez-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-08-12
]
version "0.1"
description "Fizmez Web Server - A webserver written entirely in Java. Useful for learning about servers and daemons. The whole package comes in at under 20Kbytes compressed."
website "http://sourceforge.net/projects/fizmezwebserver/"

#######################
# Ver # Server Header #
#######################
# 1.0 # Fizmez/0.0.1  #
# 1.1 # Fizmez/1.1    #
# 1.2 # Fizmez/1.2    #
# 1.3 # Fizmez/1.3    #
#######################



# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :regexp=>/^Fizmez\/0\.0\.1/, :version=>"1.0" },
{ :search=>"headers[server]", :version=>/^Fizmez\/([1-9]+\.[\d\.]+)/ },

]

end

