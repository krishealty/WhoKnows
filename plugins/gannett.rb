##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Gannett"
authors [
  "Eugene Amirov",
]
version "0.1"
description "Gannett websites"

matches [
{
    :name=>"Favicon",
    :regexp=>/<link rel="shortcut icon" href="http:\/\/www.gannett-cdn.com\/sites\/[A-Za-z0-9_-]+\/images\/favicon.png">/
},
]

end
