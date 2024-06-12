##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "MistCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-03
]
version "0.1"
description "MistCMS is a free Content Management System written in PHP that allows you to dynamically edit the content on your website without having to reupload everything every time you want to make a change."

# Google results as at 2011-03-03 #
# 1 for MistCMS intitle:MistCMS inurl:admin Username Password



# Matches #
matches [

# Admin Page
{ :text=>'<div class="page">login</div><form method="post" action="mist.php">' },

# HTML Comment
{ :text=>'<!-- Powered by MistCMS @ dvondrake.com -->' },

]

end


