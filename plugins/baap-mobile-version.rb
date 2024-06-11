##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "BAAP-Mobile-Version"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-29
]
version "0.1"
description "The BAAP Mobile Version is a complete toolkit to help mobilize your WordPress site."
website "http://wordpress.org/extend/plugins/baap-mobile-version/"

# ShodanHQ results as at 2011-08-29 #
# 3 for X-Mobilized-By: BAAP Mobile



# Matches #
matches [

# Version Detection # X-Mobilized-By Header
{ :search=>"headers[x-mobilized-by]", :version=>/^BAAP Mobile Version ([^\s]+)$/ },

]

end

