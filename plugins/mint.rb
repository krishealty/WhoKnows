##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Mint"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-04-15
]
version "0.1"
description "Mint is an extensible, self-hosted web site analytics program"
website "http://www.haveamint.com/"



# Matches #
matches [

# JavaScript Source
{ :regexp=>/<script [^>]*src=["'][^>]*mint\/\?js/i },

]

end


