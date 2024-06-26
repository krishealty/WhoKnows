##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "CMSQLite"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-07-18
]
version "0.1"
description "CMSQLite is a small, fast, flexible and complete Content-Management-System (CMS). "
website "http://cmsqlite.net/"

# Google results as at 2010-07-18 #
# 25 results for "powered by CMSQLite"

# Dorks #
dorks [
'"powered by CMSQLite"'
]



matches [

{ :text=>'<div id="cmsqliteFooter"><span id="anchorFooter"><a href="http://www.cmsqlite.net" target="_blank">powered by CMSQLite</a></span></div></body></html>' },

{ :text=>'<meta name="generator" content="www.CMSQLite.net by www.Netzabdruck.de" />' },

]


end

