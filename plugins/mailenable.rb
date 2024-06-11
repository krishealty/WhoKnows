##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "MailEnable"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-01-14
]
version "0.1"
description "Windows mail server software with webmail, caldav, carddav, antivirus, spam filtering and more."
website "http://www.mailenable.com/"

# Google results as at 2012-01-14 #
# 87 for intitle:"MailEnable - Webmail" "Account Login" "MailEnable"

# Dorks #
dorks [
'intitle:"MailEnable - Webmail" "Account Login" "MailEnable"'
]



# Matches #
matches [

# Login Page # HTML Comment
{ :text=>'</table><!-- loginPanel_shell_table -->' },

# Login Page # td class="loginPanel_botLeft"
{ :text=>'<td class="loginPanel_botLeft"><div class="loginPanel_botLeft_div"></div></td>' },

# Login Page # Title
{ :certainty=>75, :text=>'<title>MailEnable - Webmail</title>' },

]

end

