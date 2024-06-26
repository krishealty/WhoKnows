##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Car-Portal"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-04-30
]
version "0.1"
description "Car Portal is a powerful, professional looking and easy customizable php script for running auto classieds websites."
website "http://www.netartmedia.net/carsportal"

# Google results as at 2012-04-30 #
# 34 for "Powered by Car Portal" "Frequently asked questions"
#  8 for inurl:"cars/admin/index.php"

# Dorks #
dorks [
'"Powered by Car Portal" "Frequently asked questions"'
]



# Matches #
matches [

# Search Button
{ :text=>'<div onmousedown="javascript:gSubmitForm()" class="main_form_search_button">SEARCH</div>' },

# Powered by link
{ :text=>'Powered by <a href="http://www.netartmedia.net/carsportal">Car Portal</a>' },

# ./cars/admin/admin.php # Admin Page # Version Detection
{ :version=>/<TD bgcolor="#000000" class="bodyfontwhite"><strong>&nbsp;Car Script v([^\s]+) by<br>/ },

]

end

