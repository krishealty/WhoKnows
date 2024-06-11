##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "Axis-PrintServer"
authors [
  "Andrew Horton",
]
version "0.1"
description "Axis 540/542 Network Print Server"
website "http://www.axis.com/products/axis_540p/index.htm"



# 1 result for "Welcome to AXIS 540/542 Network Print Server"
# Dorks #
dorks [
'"Welcome to AXIS 540/542 Network Print Server"'
]

matches [
{:text=>'<h2>Welcome to AXIS 540/542 Network Print Server</h2>'},

{:url=>'/', :model=>/<h2>Welcome to AXIS.*<hr><p>Name: ([\S]+)<br>/m},
{:url=>'/', :version=>/<h2>Welcome to AXIS.*Software version: ([0-9\.]+)<br>/m},
]

end

