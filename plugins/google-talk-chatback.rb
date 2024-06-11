##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Google-Talk-Chatback"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-16
]
version "0.1"
description "Google 'chatback badge' allows your site's visitors to chat with you, provided you're logged in to Google Talk at the time."
website "http://www.google.com/talk/service/badge/New"



# Matches #
matches [

# iframe
{ :regexp=>/<iframe[^>]+src[\s]*=[\s]*('|")http:\/\/www.google.com\/talk\/service\/badge\/Show\?tk=[^>]+>/ },

]

end


