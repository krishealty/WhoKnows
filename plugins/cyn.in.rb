##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Cyn_in"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-04
]
version "0.1"
description "Cyn.in is a collaboration software that inter-connects your people with each other and their collective knowledge, seamlessly."
website "http://www.cynapse.com/cynin"

# 140 for "Powered by cyn.in" "free open source edition"
#  25 for "Powered by cyn.in" "free open source edition" inurl:mail_password_form

# Dorks #
dorks [
'"Powered by cyn.in" "free open source edition"'
]



# Matches #
matches [

# Meta Generator
{ :text=>'<meta name="generator" content="cyn.in - http://cyn.in" />' },

# Aggressive # /favicon.ico
{ :md5=>"3640b38549e4eeb872f66ec53ee27842", :url=>"/favicon.ico" },

# Version Detection # Powered by text
{ :version=>/<a href="http:\/\/www\.cynapse\.com\/cynin" target="_blank" class="smallcolophonmainlink">Powered by cyn\.in v([^\s]+) - free open source edition<\/a>/ },

]

end

