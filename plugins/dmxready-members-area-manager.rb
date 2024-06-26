##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "DMXReady-Members-Area-Manager"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-07-25
]
version "0.1"
description "DMXReady Members Area Manager allows you to quickly create a whole area of your website that is 'members only' so you can control who sees your content."
website "http://www.dmxready.com/?product=members-area-manager"

# Google results as at 2010-07-25 #
# 29 for inurl:inc_membersareamanager.asp

# Dorks #
dorks [
'inurl:inc_membersareamanager.asp'
]



# Matches #
matches [

# Forgot password link
{ :regexp=>/<p align="center"><a href="[^"]*\/applications\/MembersAreaManager\/inc_membersareamanager\.asp\?show=sendpassword">Forget Password\?<\/a>/ },

# Form HTML
{ :regexp=>/<form ACTION="[^"]*\/applications\/MembersAreaManager\/inc_membersareamanager\.asp" method="POST" name="login" onSubmit="YY_checkform\('login','entity_username','#q','0','Please provide username','entity_password','#q','0','Please provide password'\);return document.MM_returnValue" >/ },

]

end

