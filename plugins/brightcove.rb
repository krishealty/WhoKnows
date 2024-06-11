##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Brightcove"
authors [
  "Peter van der Laan", # 2014-08-22
]
version "0.1"
description "Brightcove Inc., a leading global provider of cloud services for video, offers a family of products that revolutionize the way organizations deliver video experiences."
website "https://www.brightcove.com/"

matches [
{:regexp=>/goku\.brightcove\.com|admin\.brightcove\.com\/js/},
]

end

