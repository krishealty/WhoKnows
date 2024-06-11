##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Allomani-E-Store"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-02
]
version "0.1"
description "E-Store with shopping cart for online shopping websites , hosting & designing , Paid services , etc ... Requirements : PHP, MySQL, ionCube"
website "http://allomani.com/en/store_script.html"

# Google results as at 2011-02-08 #
# 71 for "Programmed By Allomani"

# Dorks #
dorks [
'"Programmed By Allomani"'
]



# Matches #
matches [

	# Version Detection # Meta Generator
	{ :version=>/<meta name="generator" content="Allomani Store v([\d\.]+)" \/>/ },

]

end


