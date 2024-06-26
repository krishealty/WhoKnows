##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Indices"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-03-17
]
version "0.1"
description "Indices is a set of hacks that makes Apache's default directory index pages pretty and more usable."
website "http://antisleep.com/software/indices"

# Google results as at 2012-03-17 #
# 109 for "Parent Directory" "Indices 1.1"

# Dorks #
dorks [
'"Parent Directory" "Indices 1.1"'
]



# Matches #
matches [

# HTML Comment
{ :regexp=>/<!--[\s]+Pleasant Apache directory listings courtesy of Indices:[\s]+http:\/\/antisleep\.com\/software\/indices[\s]+-->/ },

# div class="credits" # Version Detection
{ :version=>/<div class="credits">[\s]+<a href="http:\/\/antisleep\.com\/software\/indices">Indices<\/a> ([^\s]+)[\s]+<\/div>/ },

]

end

