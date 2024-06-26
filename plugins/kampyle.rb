##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Kampyle"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-04-17
]
version "0.1"
description "Feedback form solutions for websites & software. [JavaScript]"
website "http://www.kampyle.com/"



# Matches #
matches [

# JavaScript Source
{ :regexp=>/<script [^>]*src=["']http:\/\/cf\.kampyle\.com\/k_button\.js["'][^>]*>/i },

# HTML Comments
{ :text=>'<!--Start Kampyle Feedback Form Button-->' },
{ :text=>'<!--End Kampyle Feedback Form Button-->' },

]

end


