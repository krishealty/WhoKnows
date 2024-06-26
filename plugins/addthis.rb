##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "AddThis"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-04-15
]
version "0.1"
description "AddThis is a free way to boost traffic back to your site by making it easier for visitors to share your content."
website "http://www.addthis.com/"



# Matches #
matches [

# JavaScript Source
{ :regexp=>/<script [^>]*src=["|'][^>]*addthis\.com\/js/i },

]

end


