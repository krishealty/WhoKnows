# Following document is a file of "WhoKnows" by Krish Lalwani, whos
# redistribution and commercial usage is prohibited. Please visit
# the official web site for Licensing information.

Plugin.define do
name "68-Classifieds-Script"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-04-22
]
version "0.1"
description "68 Classifieds Script - Requires PHP"
website "http://www.68classifieds.com/"

# 83 for "powered by 68 Classifieds Script"

# Dorks #
dorks [
'"powered by 68 Classifieds Script"'
]



# Matches #
matches [

# Powered by
{ :text=>'Powered by <a href="http://www.68classifieds.com">68 Classifieds Script</a>' },

# Version Detection # Meta Author
{ :version=>/<meta name="author" content="68 Classifieds - v([^"]+)" \/>/ },

]

end


