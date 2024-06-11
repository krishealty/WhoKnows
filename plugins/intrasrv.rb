##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Intrasrv"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2013-06-02
]
version "0.1"
description "IntraSrv - Simple Web Server"
website "http://www.leighb.com/intrasrv.htm"


# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^intrasrv ([\d\.]+)$/ },

]

end

