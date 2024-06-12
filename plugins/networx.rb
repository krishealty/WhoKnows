##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "NetworX"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-04-19
]
version "0.1"
description "NetworX is PHP-based open source interactive social networking platform - Hompage: http://www.socialabc.com/"

# Google results as at 2012-04-19 #
# 12 for "powered by networx" "Privacy Policy Terms of Use About Us Contact Us"

# Dorks #
dorks [
'"powered by networx" "Privacy Policy Terms of Use About Us Contact Us"'
]



# Matches #
matches [

# Powered by text
{ :text=>'Powered by <a href="http://www.socialabc.com">NetworX</a>' },

]

end

