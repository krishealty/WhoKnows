##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Kolab"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-12
]
version "0.1"
description "Kolab is a Groupware Solution for Emails, Appointments, Contacts and more. It supports mixed client environments (Outlook/KDE) because of an open storage format. Any email client speaking standard protocols can be served."
website "http://www.kolab.org/"

# Google results as at 2011-05-12 #
# 8 for intitle:"Kolab Groupware login"

# Dorks #
dorks [
'intitle:"Kolab Groupware login"'
]



# Matches #
matches [

# /favicon.png
{ :md5=>"8b2a22d60ef1352abd1e2e35f711bbf7", :url=>"/favicon.png" },

# Kolab Groupware login div
{ :text=>'<div id="toptitle">Kolab Groupware login</div>' },

# Meta Description
{ :text=>'<meta name="description" content="Kolab Administration Webinterface" />' },

# Title
{ :text=>'<title>Kolab Groupware login</title>' },

]

end


