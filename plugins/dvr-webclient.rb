##
# This file is part of Whoknows and may be subject to
# redistribution and commercial restrictions. Please see the Whoknows
# web site for more information on licensing and terms of use.
# https://github.com/krishealty/whoknows
##
Plugin.define do
name "DVR-WebClient"
authors [
  "Andrew Horton",
]
version "0.1"
description "DVR camera"

# Dorks #
dorks [
'intitle:"DVR WebClient"'
]



# Matches #
matches [

{:md5=>'8cf9f140f2ec4f5d3e533b5bc2b221ea'},

# clsid
{:text=>'259F9FDF-97EA-4C59-B957-5160CAB6884E'}

]


end

