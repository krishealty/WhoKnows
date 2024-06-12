##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "MyZone"
authors [
  "Andrew Horton",
]
version "0.1"
description "Mobile 3G WiFi Rrouter"
website "www.netcomm.com.au"


matches [
{:regexp=>/<title>MyZone<\/title>.*www\.netcomm\.com\.au/m}
]

end

