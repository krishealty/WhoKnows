##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "aspWebLinks"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-08-28
  # Version 0.2 # Updated version detection #
]
version "0.2"
description "Web app for categorizing links"
website "http://www.fullrevolution.com/"

# Dorks #
dorks [
'"powered by aspWebLinks"'
]

# 41 results for "powered by aspWebLinks" @ 2010-08-28
# 7 results for "powered by aspWebLinks" intitle:"aspWebLinks" @ 2010-08-28


matches [

# Version detection # Powered by text
{ :version=>/Powered By aspWebLinks ([\d\.]+) from <A[^>]*HREF=["']http:\/\/www.fullrevolution.com[^>]*>Full Revolution, Inc.<\/A>/ },
{ :version=>/<A[^>]*HREF=["']http:\/\/www.fullrevolution.com[^>]*>Powered By aspWebLinks ([\d\.]+)<\/A>/ },

# Version detection # Default title
{ :version=>/<title>aspWebLinks ([\d\.]+)<\/title>/ },

]

end

