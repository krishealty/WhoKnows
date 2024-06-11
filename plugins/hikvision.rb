##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "HikVision"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-07-15
]
version "0.1"
description "HikVision cameras, Digital Video Servers (DVS) and Digital Video Records (DVR)"
website "http://www.hikvisionusa.com/"

# ShodanHQ results as at 2011-07-15 #
# 58,133 for Hikvision-Webs



# Matches #
matches [

# HTTP Server Header
{ :search=>"headers[server]", :regexp=>/^Hikvision-Webs$/ },

]

end

