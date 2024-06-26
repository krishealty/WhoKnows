##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "MetaPoweredBy"
authors [
  "Andrew Horton",
  # v0.2 # remove :certainty. 
  "Brendan Coles <bcoles@gmail.com>", # v0.3 # 2011-02-24 # Updated string regexp. 
]
version "0.3"
description "This plugin extracts the values for meta tags named poweredby, powered-by, and powered by"

# Matches #
matches [

# Matches poweredby, powered-by, and powered by
{ :string=>/<meta[^>]+name=["']powered[\- ]?by["'][^>]+content=["']([^"]+)["']/i },

]

end

