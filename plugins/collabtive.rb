##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Collabtive"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-06-10
]
version "0.1"
description "Collabtive - Open Source Collaboration"
website "http://collabtive.o-dyn.de/"

# Google results as at 2012-06-10 #
# 21 for "Project Management" "Stay logged in" intitle:"Login" intitle:"Collabtive"

# Dorks #
dorks [
'"Project Management" "Stay logged in" intitle:"Login" intitle:"Collabtive"'
]



# Matches #
matches [

# Title
{ :text=>'<title>Login @ Collabtive</title>' },

# HTML Comments
{ :text=>'<!--<div id = "jslog" style = "color:red;position:absolute;top:60%;right:5%;width:300px;border:1px solid;background-color:grey;"></div>-->' },

# Form HTML
{ :text=>'<form id = "loginform" name = "loginform" method="post" action="manageuser.php?action=login"  onsubmit="return validateCompleteForm(this,\'input_error\');">' },

]

end

