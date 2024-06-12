##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Mobile-Joomla"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-03-15
]
version "0.1"
description "Mobile Joomla"
website "http://www.mobilejoomla.com/"

# ShodanHQ results as at 2011-03-13 #
# 70 for mjmarkup



# Matches #
matches [

# Set-Cookie # mjmarkup=deleted;
{ :search=>"headers[set-cookie]", :regexp=>/mjmarkup=deleted;/ },

]

end

