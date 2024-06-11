##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Comanche"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-24
]
version "0.1"
description "Comanche is an open-source web server for Squeak. Comanche contains the server framework, which makes it possible to develop web applications entirely in Squeak, without the need to run an external web server."
website "http://wiki.squeak.org/swiki"



# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^Comanche\/([^\s]+)/ },

]

end

