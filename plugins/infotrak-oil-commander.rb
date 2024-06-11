##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Infotrak-Oil-Commander"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-27
]
version "0.1"
description "Web-based system for managing oil samples through the laboratory process and presenting the results to customers."
website "http://www.infotrak.com.au/"

# Google results as at 2011-06-27 #
# 21 for intitle:"Login - Powered By: Infotrak's Oil Commander"

# Dorks #
dorks [
'intitle:"Login - Powered By: Infotrak\'s Oil Commander"'
]



# Matches #
matches [

# Title
{ :text=>"<title>Login - Powered By: Infotrak's Oil Commander</title>" },

# div id="pnlContent_Shadow"
{ :text=>'<div id="pnlContent_Shadow" style="background-color:DarkGray;overflow:hidden;position:absolute;left:23;top:163;z-index:-1;width:98%;height:700 ;">' },

# Forgot password page
{ :text=>'<span id="lblMessage">After entering your email address and clicking on Continue, an email with your login details will be sent. Please allow some time for the email. If you do not receive it please contact your dealership. </span>' },

]

end


