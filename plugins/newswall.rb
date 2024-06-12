##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "newswall"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-08-12
]
version "0.1"
description "newswall"
website "http://newswall.mayoco.de/"

# Google results as at 2012-08-12 #
# 121 for "There's no newswall without javascript - please activate"
#   5 for "There's no newswall without javascript - please activate" inurl:newswall

# Dorks #
dorks [
'"There\'s no newswall without javascript - please activate" inurl:newswall'
]



# Matches #
matches [

# NoScript
{ :regexp=>/<div id="screen"><noscript><p class="js">\s*There's no newswall without javascript - please activate\.\.\.\s*<\/p><\/noscript><\/div>/ },

]

end

