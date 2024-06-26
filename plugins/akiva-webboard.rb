##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Akiva-WebBoard"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2012-01-18
]
version "0.1"
description "Akiva WebBoard - Online Communities and Enterprise Collaboration"
website "http://www.akiva.com/default.asp?l=1&id=8"

# Google results as at 2012-01-18 #
# 590 for "Powered by WebBoard 8" "Log In Options" Username" "Password"
#  80 for "Powered by WebBoard 8"

# Dorks #
dorks [
'"Powered by WebBoard 8" "Log In Options" Username" "Password"'
]



# Matches #
matches [

# HTML Comments
{ :text=>'<!-- --- AKIVA COPYRIGHT NOTICE --- -->' },
{ :text=>'<!-- Under the terms of the WebBoard License Agreement -->' },
{ :text=>'<!-- wbmain 8/22/2005 11:11AM -->' },

# Logo HTML
{ :text=>'<img src="images/branding-bottom.gif" width="46" height="44" alt="Powered by WebBoard">' },

# Powered by link # Version Detection
{ :version=>/<td class="botBrandingLeft"  nowrap >Powered by <a href="http:\/\/get\.webboard\.com\?pid=WB80&sid=9999999999999" target="_blank" class="topicsSmallLink">WebBoard ([\d])<\/a><br>&copy;20[\d]{2} Akiva Corporation/ },

]

end

