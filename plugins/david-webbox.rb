##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "David-WebBox"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-27
]
version "0.1"
description "David WebBox is a remote data storage center."
website "http://www.tobit.com/davidfx/access/"

# ShodanHQ results as at 2011-08-27 #
# 9,486 for David-WebBox

# Google results as at 2011-08-27 #
# 14 for intitle:"David InfoCenter Web"



# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^David-WebBox\/([^\s]+ \([^\)]+\))$/ },

]

end

