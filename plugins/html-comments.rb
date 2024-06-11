##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "HTML-Comments"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-20
]
version "0.1"
description "This plugin extracts the HTML comments from the HTML source."



# Matches #
matches [

# Get HTML comments
{ :string=>/<!--([^>]+)-->/ },

]

end

