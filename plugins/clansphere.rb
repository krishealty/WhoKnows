##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "ClanSphere"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-09-18
]
version "0.1"
description "Free OpenSource Clan CMS"
website "www.csphere.eu/index/clansphere/about"

# Google results as at 2010-09-18 #
# 45 for "powered by ClanSphere"

# Dorks #
dorks [
'"powered by ClanSphere"'
]



# Matches #
matches [

# Default title
{ :text=>'<title>ClanSphere - News</title>' },

# Meta generator
{ :text=>'<meta name="generator" content="ClanSphere" />' },

# Powered by text
{ :regexp=>/Powered by <a href="http:\/\/www.csphere.eu[^>]+>Clansphere[\ CSP]*/i },
{ :regexp=>/<a href="[\/]*index.php\?mod=clansphere&amp;action=about[^>]+>Powered by Clansphere[\ CSP]*/i },
{ :regexp=>/<a href="[\/]*index.php\?mod=clansphere&amp;action=about[^>]+>Clansphere[\ CSP]*/i },
{ :regexp=>/powered by <a href="http:\/\/www.clansphere.net[^>]+>ClanSphere Project<\/a>/ },

]


end

