##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Inout-Music"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-12
]
version "0.1"
description "Inout Music is the most powerful, affordable, flexible, feature rich, customizable music portal script for your website."
website "http://www.inoutscripts.com/products/inout_music/"

# 154 results for "Powered by Inoutscripts" @ 2010-10-12


matches [

# Default Javascript # Certainty=>75 as this is used by other Inout scripts
{ :text=>'function trim(stringValue){return stringValue.replace(/(^\s*|\s*$)/, "");}', :certainty=>75 },

# Powered by text
{ :text=>' href="http://www.inoutscripts.com/?r=13">Powered by Inoutscripts</a>' },

]

end

