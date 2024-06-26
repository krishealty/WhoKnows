##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Axous"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-05-20
]
version "0.1"
description "Axous is an e-shop system for software venders."
website "http://www.axous.com/"

# Google results as at 2012-05-20 #
# 105 for "Powered by Axous" "Valid CSS"

# Dorks #
dorks [
'"Powered by Axous" "Valid CSS"'
]



# Matches #
matches [

# Meta Generator # The version is a lie
{ :regexp=>/<meta name="generator" content="Axous V([^"]+)" \/>/ },

# Footer # Powered by link # Version Detection
{ :version=>/Powered by <a href="http:\/\/www\.axous\.com\/" target="_blank" title="Axous Shareware Shop">Axous ([^\s]+)<\/a> &copy;/ },

# tits? In my HTML? It's more likely than you think.
{ :text=>'<div class="tit2 tit3">Products</div>' },

]

end

