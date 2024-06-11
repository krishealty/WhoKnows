##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "MailForm-Plugin"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-09-18
  # v0.2 # 2011-02-25 # Updated version detection. 
]
version "0.2"
description "PHP contact form"
website "http://www.h-fj.com/blog/mtplgdoc/"

# Google results as at 2010-09-18 #
# 24 for "powered by MailForm"

# Dorks #
dorks [
'"powered by MailForm"'
]



# Matches #
matches [

# Version Detection # Powered by text
{ :version=>/<a href="http:\/\/www.h-fj.com\/blog\/mtplgdoc\/mailformv[\d\.\_]+.php"[^>]*>Powered by Mailform plugin[s]? V([\d\.]+)<\/a>/i },

{ :version=>/<a href="http:\/\/www.h-fj.com\/blog\/mtplgdoc\/mailformv[\d\.\_]+.php"[^>]*>Powered by Mailform V([\d\.]+)<\/a>/i },

]

end

