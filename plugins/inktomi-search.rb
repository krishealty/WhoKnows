##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Inktomi-Search"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-20
]
version "0.1"
description "Inktomi Search engine"
website "http://www.inktomi.com/products/search/"

# ShodanHQ results as at 2011-08-20 #
# 20 for Inktomi



# Matches #
matches [

# Version Detection # HTTP Server Header
{ :search=>"headers[server]", :version=>/^Inktomi Search ([^\s]+)$/ },

# Version Detection # /util/badkey.html
{ :url=>"/util/badkey.html", :version=>/<font size="\+1"><b>License Key Problems<\/b><\/font><br>[\s]+<b>Inktomi Search ([^<^\s]+)<\/b><br>/ },

]

end

