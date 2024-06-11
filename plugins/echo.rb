##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Echo"
authors [
  "Andrew Horton",
  # v0.2 # removed :name and :certainty=>100. 
]
version "0.2"
description "CMS"
website "http://www.helloecho.com/"

# Dorks #
dorks [
'"powered by echo"'
]

# Matches #
matches [
{:regexp=>/<a href="http:\/\/www\.helloecho\.com\/go\/\?[^"]*" target="_blank">powered by echo<\/a>/},
]

end


