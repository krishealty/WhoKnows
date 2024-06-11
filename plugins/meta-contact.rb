##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Meta-Contact"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-20
]
version "0.1"
description "This plugin retrieves the contact name or email from the meta contact tag."

# Matches #
matches [

# Get contact details
{ :string=>/<meta[^>^=]+name[\s]*=[\s]*['|"]?contact['|"]?[^>]+content[\s]*=[\s]*['|"]?([^'^"^>]+)/i },
{ :string=>/<meta[^>^=]+content[\s]*=[\s]*['|"]?([^"^'^>]+)[^>]+name[\s]*=[\s]*['|"]?contact/i },

]

end

