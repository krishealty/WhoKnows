##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "LiteRadius"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-07-14
]
version "0.1"
description "LiteRadius is a web server software program that interfaces geographic locations to the Google Maps API. Requires PHP and MySQL."
website "http://www.escaperadius.com/er/products/literadius/lr.php"

# Google results as at 2011-07-14 #
# 33 for allinurl: locator.php?long=

# Dorks #
dorks [
'allinurl: locator.php?long='
]



# Matches #
matches [

# inurl:locator.php parsed_page lat long
{ :ghdb=>'inurl:locator.php parsed_page lat long' },

]

end

