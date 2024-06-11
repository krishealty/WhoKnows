##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Informatics-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-09-20
]
version "0.1"
description "Informatics custom Content Management System (CMS)"
website "http://www.informaticsinc.com/Content/Services/Web-Design-and-Development/Content-Management-Systems.aspx"

# ShodanHQ results as at 2011-09-20 #
# 153 for HTMLTitle

# Google results as at 2011-09-20 #
# 246 for "Web Application by Informatics, Inc."

# Dorks #
dorks [
'"Web Application by Informatics, Inc."'
]



# Matches #
matches [

# Cookie
{ :search=>"headers[set-cookie]", :regexp=>/[\d]+=HTMLTitle=[^\s]*&OrgName=[^\s]+&EmailThankYou=[^\s]*&DefaultIdPage=[^\s]+&State=/ },

# Meta Author
{ :text=>'<meta name="author" content="Informatics, Inc.">' },

# Web Application by footer
{ :regexp=>/Web Application by <a href="http:\/\/www\.(ia-informatics|informaticsinc)\.com" [^>]*target="_blank"><b>Informatics, Inc\.<\/b><\/a>/ },

]

end

