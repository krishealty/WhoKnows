##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Address"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-01-25
]
version "0.1"
description "This plugin identifies the 'address' (X)HTML/XML element and extracts its value."

# Google rsults as at 2011-01-25 #
# 124,000,000 for "Apache" "Server at" intitle:"index of"



# Matches #
matches [

	# Extract address value
	{ :string=>/<address>([^<]*)<\/address>/i },
	{ :string=>/<address value="([^"]+)"[^>]*>/i },

]

end


