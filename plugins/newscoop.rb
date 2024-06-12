##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Newscoop"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-05-09
]
version "0.1"
description "Open content management system for professional journalists & online newspapers."
website "http://www.sourcefabric.org/en/newscoop/"

# Google results as at 2012-04-10 #
# 49 for intitle:"Login" inurl:admin "Newscoop" "the open content management system for professional journalists."

# Dorks #
dorks [
'intitle:"Login" inurl:admin "Newscoop" "the open content management system for professional journalists."'
]



# Matches #
matches [

# /admin/ # Admin Page # Version Detection
{ :version=>/<a href="http:\/\/newscoop\.sourcefabric\.org\/" target="_blank">\s+Newscoop<\/a>&nbsp;([\d\.]+)[^,]*,\s+the open content management system for professional journalists\./ },

# Powered by text
{ :text=>'Powered by Newscoop, the open content management system for professional journalists.<br />' },
{ :text=>'Powered by <a href="http://newscoop.sourcefabric.org/" target="_blank">Newscoop</a>, the open content management system for professional journalists.' },

# Meta Generator
{ :text=>'<meta name="generator" content="Newscoop" />' },

]

end

