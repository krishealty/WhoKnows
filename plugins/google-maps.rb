##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Google-Maps"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-04-16
]
version "0.1"
description "Google Maps"
website "http://maps.google.com/"

# Google results as at 2011-04-16 #
# 539 for "powered by google maps"

# Dorks #
dorks [
'"powered by google maps"'
]



# Matches #
matches [

# JavaScript Source
{ :regexp=>/<script [^>]*src=["'][^>]*maps\.google\.com\/maps(\?file=api|\/api\/staticmap)/i },

]

end


