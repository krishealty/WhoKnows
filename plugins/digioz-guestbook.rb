##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "DigiOz-Guestbook"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-04-21
]
version "0.1"
description "DigiOz Guestbook"
website "http://www.digioz.com/"

# 459 for intitle:"powered by DigiOz Guestbook version"

# Dorks #
dorks [
'intitle:"powered by DigiOz Guestbook version"'
]



# Matches #
matches [

# HTML Comments
{ :text=>'<!-- NOTE: PLEASE DO NOT REMOVE THE BELLOW 3 LINES FROM YOUR HEADER FILE -->' },
{ :text=>'<!-- NOTE: PLEASE DO NOT REMOVE THE ABOVE 3 LINES FROM YOUR HEADER FILE -->' },

# Version Detection # Title
{ :version=>/<title>Powered by DigiOz Guestbook Version ([\d\.]+)<\/title>/ },

# Version Detection # Copyright footer
{ :version=>/<a href="http:\/\/www\.digioz\.com"[^>]*>DigiOz (\.NET )?Guestbook Version ([\d\.]+)<br( \/)?>&copy; 20[\d]{2} DigiOz Multimedia\./, :offset=>1 },

]

end


