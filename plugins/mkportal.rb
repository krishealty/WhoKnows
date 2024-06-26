##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "MKPortal"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-15
]
version "0.1"
description "MKPortal blog and forum software - Homepage [offline] : http://www.mkportal.it/"

# Google results as at 2011-03-05 #
# 307 for inurl:"index.php?ind=blog"

# Dorks #
dorks [
'inurl:"index.php?ind=blog"'
]



# Matches #
matches [

# Meta Generator
{ :text=>'<meta name="generator" content="MKPortal" />' },

# CSS Comment
{ :text=>'|   Cascading Style Sheet for MKportal "Forum" Portal Template' },

# HTML Comment
{ :certainty=>25, :text=>'<!-- end close portal body -->' },

# Version Detection # Copyright link
{ :version=>/<a style="text-decoration: none;" href="http:\/\/www.mkportal.it\/" target="_blank">MKPortal<\/a> ([^&^<]+)(<\/b>)? &copy;2003-20[\d]{2}/ },

]

end


