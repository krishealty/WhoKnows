##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "CmyDocument"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-11-04
]
version "0.1"
description "CmyDocument is a Content Management and Document Management application"
website "http://cmydocument.com/"

# Google results as at 2011-11-04 #
# 6 for inurl:"myDoclist.asp" intitle:"CmyDocument"

# Dorks #
dorks [
'inurl:"myDoclist.asp" intitle:"CmyDocument"'
]



# Matches #
matches [

# StyleSheet
{ :text=>'<link href="CmyDocument.css" rel="stylesheet" type="text/css">' },
{ :text=>'<link href="CmyDocument2.css" rel="stylesheet" type="text/css">' },
{ :text=>'<link rel="stylesheet" type="text/css" href="CmyDocument.css">' },

# Shortcut Icon
{ :text=>'<link rel="SHORTCUT ICON" href="icon_cmydoc.ico">' },

# HTML Comment
{ :text=>'<!-- footer (begin) --><!-- *** Note: Only licensed users are allowed to remove or change the following copyright statement. *** -->' },

# Document View link
{ :regexp=>/<td style="white-space: nowrap;"><span class="aspmaker"><a href="myDocview\.asp\?(myDocID|ID)=[\d]+">View<\/a><\/span><\/td>/ },

]

end

