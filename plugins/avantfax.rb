##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "AvantFAX"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-10
  # Brendan Coles <bcoles@gmail.com>, # v0.2 # 2011-08-23 # Added version detection and google dorks. 
]
version "0.2"
description "AvantFAX is a web application for managing faxes on HylaFAX fax servers."
website "http://avantfax.com/"

# ShodanHQ results as at 2011-05-10 #
# 216 for AvantFAX

# Google results as at 2011-08-23 #
# 18 for "avantfax login" "Enter your username and password to access the fax interface."

# Dorks #
dorks [
'"avantfax login" "Enter your username and password to access the fax interface."'
]



# Matches #
matches [

# Meta description
{ :text=>'<meta name="description" content="Web 2.0 HylaFAX management" />' },

# Password input HTML
{ :text=>'</label><br /><br /><input type="password" name="password" id="password" style="width: 12em" maxlength="15" /></p><br />' },

# AvantFAX Cookie
{ :search=>"headers[set-cookie]", :regexp=>/AvantFAX=[a-z\d]{26}; path=\// },

# Version Detection # Login page
{ :version=>/<p><a href="http:\/\/www\.avantfax\.com" target="_blank"><img src="images\/avantfax-big\.png" border="0" alt="AvantFAX" \/><\/a><\/p>[\s]+<p align="center">([^\s^<]+)<\/p>/ },

]

end

