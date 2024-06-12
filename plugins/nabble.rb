##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Nabble"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-16
]
version "0.1"
description "Freed embeddable web apps"
website "http://www.nabble.com/"

# Google results as at 2011-05-16 #
# 480 for "powered by Nabble"

# Dorks #
dorks [
'"powered by Nabble"'
]



# Matches #
matches [

# Error Page # div class "nabble"
{ :text=>'<div class="nabble" id="nabble">' },

# Error Page # Powered by link
{ :text=>'Powered by <a href="http://www.nabble.com/" target="_top" title="Free forum and other embeddable web apps">Nabble</a>' },

# table class "footer-table shaded-bg-color"
{ :text=>'<table class="footer-table shaded-bg-color">' },

]

end


