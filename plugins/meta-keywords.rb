##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Meta-Keywords"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-20
]
version "0.1"
description "This plugin retrieves the keywords from the meta keywords tag."



# Matches #
matches [

# Get keywords
{ :string=>/<meta[^>]+name[\s]*=[\s]*['"]?keywords[^>]+content[\s]*=[\s]*['"]?([^'^"^>]+)/i },
{ :string=>/<meta[^>]+content[\s]*=[\s]*['"]?([^"^']+)[^>]+name[\s]*=[\s]*['"]?keywords/i },

]

end

