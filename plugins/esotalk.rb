##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "esoTalk"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-01-29
]
version "0.1"
description "esoTalk is a simple, fast, free web-forum."
website "http://esotalk.com/"

# Google results as at 2011-01-29 #
# 93 for "Powered by esoTalk"

# Dorks #
dorks [
'"Powered by esoTalk"'
]



# Matches #
matches [

# Default Generated By HTML Comment
{ :text=>"<!-- This page was generated by esoTalk (http://esotalk.com) -->" },

# Default Copyright HTML Comment
{ :text=>'<!-- The following text constitutes a copyright notification and, under the terms of the GNU GPL (see LICENSE), may neither be removed nor altered in any way which makes it invisible, affects the hyperlink, or changes the text "Powered by esoTalk". -->' },

# Default Powered by Text
{ :text=>"Powered by <a href='http://esotalk.com/'>esoTalk</a>&trade;" },

# Default Copyright Text
{ :text=>"<ul><li><a href='http://esotalk.com'>Donate to esoTalk</a></li></ul><p id='copyright'>" },

# Install Page # Default Title
{ :text=>"<title>esoTalk Installer</title>", :module=>"Install Page" },

# Install Page # Default Install Error Message
{ :text=>"<p>If you run into any other problems or just want some help with the installation, feel free to ask for assistance at the <a href='http://forum.esotalk.com/'>esoTalk support forum</a> where a bunch of friendly people will be happy to help you out.</p>", :module=>"Install Page" },

# Install Page # Default JavaScript HTML
{ :text=>"<script type='text/javascript' src='../js/esotalk.js'></script>", :module=>"Install Page" },

]

end


