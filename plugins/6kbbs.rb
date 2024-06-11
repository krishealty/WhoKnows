# Following document is a file of "WhoKnows" by Krish Lalwani, whos
# redistribution and commercial usage is prohibited. Please visit
# the official web site for Licensing information.

Plugin.define do
name "6kbbs"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-10-29
]
version "0.1"
description "6kbbs - Forum"
website "http://www.6kbbs.net/"

# Google results as at 2011-10-29 #
# 178 for "Total" "query" "Time now is" "Powered by 6kbbs"

# Dorks #
dorks [
'"Total" "query" "Time now is" "Powered by 6kbbs"'
]



# Matches #
matches [

# Meta Generator # Version Detection
{ :version=>/<meta name="generator" content="6KBBS v([^"^>]+)" \/>/ },

# Meta Copyright # Year
{ :regexp=>/<meta name="copyright" content="2003-20[\d]{2} 6KBBS" \/>/ },

# Meta Author
{ :text=>'<meta name="author" content="www.6kbbs.com" />' },

# Powered by footer # Version Detection
{ :version=>/Powered by <a href="http:\/\/www\.6kbbs\.com" target="_blank">6kbbs V([^<^\s]+)<\/a> &copy; 2003-20[\d]{2}/ },

]

end

