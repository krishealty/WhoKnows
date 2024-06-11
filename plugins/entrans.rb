##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Entrans"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-02-27
]
version "0.1"
description "Entrans is an online translation tool. The tool can be used by the online community to give suggestions for a list of English words/phrases that needs to be translated into a specific Indic Language."
website "http://entrans.sourceforge.net/"

# Google results as at 2011-02-27 #
# 6 for "View All Strings" "The tool can be used by the online community"

# Dorks #
dorks [
'"View All Strings" "The tool can be used by the online community"'
]



# Matches #
matches [

# Default View All Strings HTML
{ :text=>'<li ><a href="list.php?category=all&amp;page=1" >View All Strings</a> </li>' },

# Default Title
{ :certainty=>25, :text=>"<title>Entrans</title>" },

]

end


