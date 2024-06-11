##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "envezion~media"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-08-15
]
version "0.1"
description "envezion~MEDIA makes it possible for the small business owner to you reach your goals through our consulting services."
website "http://envezion.com/"

# 15 results for "powered by envezion~media" @ 2010-08-15

# Dorks #
dorks [
'"powered by envezion~media"'
]



matches [

{ :text=>'Powered by <a href="http://envezion.com/">envezion~MEDIA</a>' },
{ :text=>'Powered by <a href="http://envezion.com/"><strong>envezion~MEDIA</strong></a>' },
{ :text=>'Powered by <a href="http://www.envezion.com" target="_blank"><strong> envezion~media</strong></a><br />' },

]

end

