##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Meta-Author"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-14
]
version "0.1"
description "This plugin retrieves the author name from the meta name tag - info: http://www.webmarketingnow.com/tips/meta-tags-uncovered.html#author"



# Matches #
matches [

# Get author's name
{ :string=>/<meta[^>^=]+name[\s]*=[\s]*['"]?author['"]?[^>^=]+content[\s]*=[\s]*['"]([^'^"^>]+)/i },
{ :string=>/<meta[^>^=]+content[\s]*=[\s]*['"]([^"^'^>]+)['"][^>^=]+name[\s]*=[\s]*['"]?author['"]?/i },

]

end

