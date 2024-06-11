##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "CBS-Interactive"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-06-14
]
version "0.1"
description "CBS Interactive - online content network"
website "http://www.cbsinteractive.com/"



# Matches #
matches [

# JavaScript
{ :regexp=>/<script[^>]+ src="http:\/\/dw\.com\.com\/js\/dw\.js"><\/script>/ },

# JavaScript # SiteId Detection
{ :account=>/<script>DW.pageParams = \{siteId:'([^']+)'\};DW.clear\(\);<\/script>/ },

# NoScript # SiteId Detection
{ :account=>/<img src="http:\/\/dw\.com\.com\/clear\/c\.gif\?sid=([^"^\s^>^&]+)/ },

]

end

