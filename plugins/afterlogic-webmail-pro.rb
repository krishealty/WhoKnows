##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "AfterLogic-WebMail-Pro"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-20
  "Andrew Horton", # v0.2 # 2016-04-18 # Replaced passive function with match for cookies. 
]
version "0.2"
description "AfterLogic WebMail Pro is a webmail front-end for your existing POP3/IMAP mail server."
website "http://www.afterlogic.com/mailbee/webmail-pro.asp"

# ShodanHQ results as at 2011-05-20 #
# 226 for PHPWEBMAILSESSID

# Google results as at 2011-05-20 #
# 94 for "Powered by AfterLogic WebMail Pro" intitle:"AfterLogic WebMail Pro"

# Dorks #
dorks [
'"Powered by AfterLogic WebMail Pro" intitle:"AfterLogic WebMail Pro"'
]



# Matches #
matches [

# Powered by link
{ :text=>'Powered by <a href="http://www.afterlogic.com/products/webmail-pro" target="_blank">AfterLogic WebMail Pro</a><br />' },

# Version Detection # HTML Comment
{ :version=>/AfterLogic Corporation<\/a>\s?<\/div>\s+<\/body>\s<\/html>\s<!--\s?([\d\.]+)\s?-->/ },
{ :version=>/AfterLogic Corporation<\/a>\s?<\/div>\s+<!--\s?([\d\.]+)\s?-->\s<\/body>\s<\/html>/ },

# PHPWEBMAILSESSID cookie
{ :name=>"PHPWEBMAILSESSID cookie", :search=>"headers[set-cookie]", :regexp=>/^PHPWEBMAILSESSID=[^;]+;/ },

# PHPWMADMINSESSID cookie
{ :name=>"PHPWMADMINSESSID cookie", :search=>"headers[set-cookie]", :regexp=>/^PHPWEBMAILSESSID=[^;]+;/ },
]

end

