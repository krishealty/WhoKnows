##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "ACollab"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-09-17
]
version "0.1"
description "ACollab is an accessible, open source, multi-group, Web-based collaborative work environment. ACollab is available as a work groups addon for ATutor 1.4+ , and as a standalone collaborative work environment that will run on its own."
website "http://www.atutor.ca/acollab/"

# Google results as at 2010-09-17 #
# 7 for intitle:"ACollab : Accessible Collaboration Environment:"

# Dorks #
dorks [
'intitle:"ACollab : Accessible Collaboration Environment:"'
]



matches [

# Default title
{ :text=>'<title>ACollab : Accessible Collaboration Environment:' },

]


end

