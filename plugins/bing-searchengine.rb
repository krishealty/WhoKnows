##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Bing-SearchEngine"
authors [
  "Andrew Horton",
  # v0.2 # removed :name, :certainty=>100, and changed regexp to text
]
version "0.2"
description "Bing.com is Microsoft's search engine"


#

matches [
{:text=>'var curUrl="http://www.bing.com/"' },
{:text=>'<meta content="Bing is a search engine that finds' }
]

end

