##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "McAfee-Secure"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-20
]
version "0.1"
description "McAfee Secure sites apparently help keep you safe from identity theft, credit card fraud, spyware, spam, viruses and online scams"
website "http://www.mcafeesecure.com/"



# Matches #
matches [

{ :string=>/<a target="?_blank"? href="https?:\/\/www\.(mcafeesecure|scanalert)\.com\/RatingVerify\?ref=([^"]+)"[^>]*>[\s]*<img/i, :offset=>1 },

]

end

