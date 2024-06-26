##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "dir2web-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-08-08
]
version "0.1"
description "dir2web CMS"
website "http://www.dir2web.it/"

# Google results as at 2012-08-08 #
# 6 for inurl:"index.php?wpid=homepage"

# Dorks #
dorks [
'inurl:"index.php?wpid=homepage"'
]



# Matches #
matches [

# StyleSheet
{ :text=>'<link href="default/styles/d2w_object_page.css" rel="stylesheet" type="text/css" media="screen" /></head>' },

# div class="d2w-back_link"
{ :text=>'<div class="d2w-back_link" id="start">' },

# Logo HTML
{ :text=>'<img src="_themes\/d2w\d\/images\/logo_hp\.jpg" title="dir2web \d logo" alt="dir2web \d logo"/>' },

# Footer # Version Detection
{ :version=>/<a href="http:\/\/www\.dir2web\.it"><img style="border:0px" src="default\/d2w\d\.gif" alt="dir2web ([^\s]+) CMS" title="dir2web ([^\s]+) CMS"\/><\/a><br\/><br\/><\/div>/ },

]

end

