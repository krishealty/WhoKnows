##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Facebook-Plugin"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-06
]
version "0.1"
description "This plugin identifies Facebook plugins"
website "http://apps.facebook.com/widgets/"
# More Info: http://developers.facebook.com/docs/plugins



# Matches #
matches [

# Widget Detection # Iframe version
{ :string=>/<i?frame[^>]+src[\s]*="http:\/\/(www|apps)\.facebook.com\/plugins\/([^\.^\/^\?]+)\.php\?/i, :offset=>1 },

]

end


