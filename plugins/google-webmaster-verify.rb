##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Google-Webmaster-Verify"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-17
]
version "0.1"
description "This plugin identifies the verify meta tag for Google Webmaster verification. This may be useful for tracking a webmaster across multiple domains."



# Matches #
matches [

# Meta Verify
{ :string=>/<meta name="(google-site-verification|verify-v1)"[^>]+content="([^"^>]+)"[\s]*[\/]?>/i, :offset=>1 },

]

end


