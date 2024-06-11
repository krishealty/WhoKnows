##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "CubeCart"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-09-10
  # v0.2 # 2011-01-25 # Updated version detection. 
]
version "0.2"
description "CubeCart is an out of the box ecommerce shopping cart software solution which has been written to run on servers that have PHP & MySQL support."
website "http://www.cubecart.com/"

# Google results as at 2010-09-10 #
# 492 results for intitle:"powered by cubecart"
# 643 results for "powered by cubecart"

# Dorks #
dorks [
'intitle:"powered by cubecart"',
'"powered by cubecart"'
]



# Matches #
matches [

	# Powered by text
	{ :text=>"<div class='txtCopyright'>Powered by <a href='http://www.cubecart.com' class='txtCopyright' target='_blank'>CubeCart</a>" },

	# Default title
	{ :regexp=>/<title>[^<]{1,256} \(Powered by CubeCart\)<\/title>/ },

	# Version Detection # Powered by text
	{ :version=>/<p class="defaultText">Powered by CubeCart version ([\d\.]+)<br \/>/ },

]

end

